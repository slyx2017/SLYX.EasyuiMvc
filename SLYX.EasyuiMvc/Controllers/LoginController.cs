using SLYX.BLL;
using SLYX.Common;
using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SLYX.EasyuiMvc.Controllers
{
    public class LoginController : Controller
    {
        private IBLL.IUserBLL _userBLL = new UserBLL();
        public ActionResult noSessionExprise()
        {
            return View();
        }

        // GET: Login
        public ActionResult Login()
        {
            return View("Login");
        }
        public ActionResult CheckCode()
        {
            ValidateCode validateCode = new ValidateCode();//首先实例化验证码的类
            string code = validateCode.CreateValidateCode(5);//生成验证码指定的长度
            Session["ValidateCode"] = code;//将验证码赋值给Session变量
            byte[] bytes = validateCode.CreateValidateGraphic(code);//创建验证码的图片
            return File(bytes, @"image/png");//最后将验证码返回
        }
        #region 1.0 管理员登录页面 +ActionResult Login()
        /// <summary>
        /// 1.0 管理员登录页面
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Login(FormCollection form)
        {
            AjaxMsgModel ajaxM = new AjaxMsgModel() { Statu = "err", Msg = "登录失败！" };

            //1.1 获取数据
            string strName = Request.Params["UserName"];
            string strPwd = Request.Params["Password"];
            bool isAllway=bool.Parse(Request.Params["isAllway"]);
            //1.2 验证

            // 1.3 通过操作上下文获取 用户业务接口对象 ，调用里面的登录方法!
            User usr = _userBLL.Login(strName, strPwd);
            if (usr != null)
            {
                //2.1 保存 用户数据（session or cookie）
                Session["ainfo"] = usr;

                //如果选择了复选框 则要使用cookie 保存数据
                if (isAllway)
                {
                    //2.1.2 将用户id加密成字符串
                    string strCookieValue = SecurityHelper.EncryptUserInfo(usr.ID.ToString());
                    //2.1.3 创建cookie
                    HttpCookie cookie = new HttpCookie("cookieId", strCookieValue);
                    cookie.Expires = DateTime.Now.AddDays(1);
                    cookie.Path = "/admin";
                    Response.Cookies.Add(cookie);
                    //记录登录cookie
                }
                //2.2 查询当前用户的权限 ， 并将权限存入Session 中
                //List<tbMenu> listPers = OperateContext.GetUserPermission(usr.ID);
                //Session["tbMenu"] = listPers;
                ajaxM.Statu = "ok";
                ajaxM.Msg = "登录成功！";
                ajaxM.BackUrl = "/Home/Index";//"/Login/LoginOK";
                return Json(ajaxM);
            }
            else
            {
                ajaxM.Msg = "登录失败，用户或密码不正确！";
                return Json(ajaxM);
            }
        }
        #endregion

        public ActionResult UserLoginOut()
        {
            AjaxMsgModel ajaxM = new AjaxMsgModel() { Statu = "err", Msg = "退出录败！" };
            //清空cookie
            //CookiesHelper.AddCookie("cookieId", DateTime.Now.AddDays(-1));
            Session.Clear();
            ajaxM.Statu = "ok";
            ajaxM.Msg = "退出成功！";
            ajaxM.BackUrl = "/Login/Login";
            return Json(ajaxM);
        }
    }
}
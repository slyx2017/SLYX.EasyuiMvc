using System.Collections.Generic;
using System.Web.Mvc;
using SLYX.Model;
using SLYX.BLL;

namespace SLYX.EasyuiMvc.Controllers
{
    public class UserController : Controller
    {
        private IBLL.IUserBLL _userBLL = new UserBLL();
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetAllUserInfo()
        {
            SLYX.Common.AjaxMsgModel ajaxMsg = new Common.AjaxMsgModel() { Statu = "err", Msg = "登录失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var data = _userBLL.LoadPageEntities(pageIndex, pageSize,out total,u=>u.IsDel==false,true,u=>u.ID);
            var result = new { total = total, rows = data };
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Login()
        {
            return View();
        }
        // GET: User
        public JsonResult CheckLogin()
        {
            SLYX.Common.AjaxMsgModel ajaxMsg = new Common.AjaxMsgModel() { Statu = "err", Msg = "登录失败！" };

            ajaxMsg.Statu = "ok";
            ajaxMsg.Msg = "登录成功！";
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
    }
}
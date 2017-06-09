using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SLYX.EasyuiMvc.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            return View();
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
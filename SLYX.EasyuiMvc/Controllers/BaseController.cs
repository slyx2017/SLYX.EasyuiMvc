using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace SLYX.EasyuiMvc.Controllers
{
    /// <summary>
    /// 基类BaseController，过滤器
    /// </summary>
    public class BaseController : Controller
    {
        //重新基类在Action执行之前的事情,在Action执行之前的一个方法
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //判断用户是否为空
            if (!checkLogin())
            {
                filterContext.Result = RedirectToRoute("Default",new { Controller = "Login", Action = "noSessionExprise" });
            }
            base.OnActionExecuting(filterContext);
        }
        protected bool checkLogin()
        {
            if (Session["ainfo"]==null)
            {
                return false;
            }
            return true;
        }
    }
}
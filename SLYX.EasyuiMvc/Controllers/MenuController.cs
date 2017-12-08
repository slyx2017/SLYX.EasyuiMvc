using SLYX.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SLYX.EasyuiMvc.Controllers
{
    public class MenuController : MvcControllerBase
    {
        private IBLL.IMenuBLL _menuBLL;

        public MenuController(IBLL.IMenuBLL menubll)
        {
            _menuBLL = menubll;
        }
        // GET: Menu
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult MenuList()
        {
            SLYX.Common.AjaxMsgModel ajaxMsg = new Common.AjaxMsgModel() { Statu = "err", Msg = "加载失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var data = _menuBLL.LoadPageEntities(pageIndex, pageSize, out total, u => u.Id>0, true, u => u.Id);
            var result = new { total = total, rows = data };
            return Json(result, JsonRequestBehavior.AllowGet);
        }

    }
}
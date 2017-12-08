using SLYX.Common;
using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SLYX.EasyuiMvc.Controllers
{
    public class LogController : Controller
    {
        private IBLL.IBase_LogBLL _baselogBLL;
        public LogController(IBLL.IBase_LogBLL logbll)
        {
            _baselogBLL = logbll;
        }
        // GET: Log
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult LogList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "登录失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var rows = _baselogBLL.LoadPageEntities(pageIndex, pageSize, out total, u => u.DeleteMark == 0, true, u => u.OperateTime).OrderByDescending(u=>u.OperateTime);

            //var result = new { total = total, rows = data };
            return Json(new GridDataHelper<Base_Log>(rows, total), JsonRequestBehavior.AllowGet);
        }
    }
}
using SLYX.Common;
using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SLYX.EasyuiMvc.Controllers
{
    public class DeptmentController : MvcControllerBase
    {
        private IBLL.IDepartmentBLL _deptBLL;
        public DeptmentController(IBLL.IDepartmentBLL deptbll)
        {
            _deptBLL = deptbll;
        }
        // GET: Role
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DeptList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "err", Msg = "加载失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var rows = _deptBLL.LoadPageEntities(pageIndex, pageSize, out total, u => u.Id > 0, true, u => u.Id);

            //var result = new { total = total, rows = data };
            return Json(new GridDataHelper<Department>(rows, total), JsonRequestBehavior.AllowGet);
        }

        public ActionResult Add()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "新增失败！" };
            User sessionUser = Session["ainfo"] as User;
            Department deptModel = new Department();
            string DepartmentName = Request["DepartmentName"];
            string isable = Request["IsAble"];
            string sort = Request["Sort"];
            string id = Request["hideId"];
            deptModel.DepartmentName = DepartmentName;
            deptModel.Sort = int.Parse(sort);
            deptModel.IsAble = isable == "1" ? true : false;
            deptModel.CreateTime = DateTime.Now;
            deptModel.CreateBy = sessionUser.AccountName;

            bool flag = false;
            if (id != "" && id != "0")
            {
                deptModel.Id = int.Parse(id);
                deptModel.UpdateBy = sessionUser.AccountName;
                deptModel.UpdateTime = DateTime.Now;
                flag = _deptBLL.UpdateEntity(deptModel);
            }
            else
            {
                flag = _deptBLL.AddEntity(deptModel) > 0;
            }
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "提交成功！";
            }
            //var json = Newtonsoft.Json.JsonConvert.SerializeObject(ajaxMsg);
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "删除失败！" };
            string ids = Request["ids"];
            string[] result = ids.Split(',');
            List<Department> listDept = new List<Department>();
            foreach (string item in result)
            {
                //if (sessionUser.ID.ToString() == item)
                //{
                //    ajaxMsg.Msg = "不能删除当前登录账户";
                //    return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
                //}
                Department dept = _deptBLL.Find(int.Parse(item));
                if (dept != null)
                {
                    listDept.Add(dept);
                }
            }

            bool flag = _deptBLL.RemoveRange(listDept);
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "删除成功！";
            }
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
    }
}
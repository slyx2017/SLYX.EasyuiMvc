using SLYX.Common;
using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SLYX.EasyuiMvc.Controllers
{
    public class RoleController : Controller
    {
        private IBLL.IRoleBLL _roleBLL;
        public RoleController(IBLL.IRoleBLL rolebll)
        {
            _roleBLL = rolebll;
        }
        // GET: Role
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult RoleList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "err", Msg = "加载失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var rows = _roleBLL.LoadPageEntities(pageIndex, pageSize, out total, u => u.Id>0, true, u => u.Id);

            //var result = new { total = total, rows = data };
            return Json(new GridDataHelper<Role>(rows, total), JsonRequestBehavior.AllowGet);
        }

        public ActionResult Add()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "err", Msg = "新增失败！" };
            User sessionUser = Session["ainfo"] as User;
            Role roleModel = new Role();
            string RoleName = Request["RoleName"];
            string Description = Request["Description"];
            string isable = Request["IsAble"];
            string id = Request["hideId"];
            roleModel.RoleName = RoleName;
            roleModel.Description = Description;

            roleModel.IsAble = isable == "1" ? true : false;
            roleModel.CreateTime = DateTime.Now;
            roleModel.CreateBy = sessionUser.AccountName;
            
            bool flag = false;
            if (id != "" && id != "0")
            {
                roleModel.Id = int.Parse(id);
                roleModel.UpdateBy = sessionUser.AccountName;
                roleModel.UpdateTime = DateTime.Now;
                flag = _roleBLL.UpdateEntity(roleModel);
            }
            else
            {
                flag = _roleBLL.AddEntity(roleModel) > 0;
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
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "err", Msg = "删除失败！" };
            Role sessionUser = Session["ainfo"] as Role;
            string ids = Request["ids"];
            string[] result = ids.Split(',');
            List<Role> listRole = new List<Role>();
            foreach (string item in result)
            {
                //if (sessionUser.ID.ToString() == item)
                //{
                //    ajaxMsg.Msg = "不能删除当前登录账户";
                //    return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
                //}
                Role role = _roleBLL.Find(int.Parse(item));
                if (role != null)
                {
                    listRole.Add(role);
                }
            }

            bool flag = _roleBLL.RemoveRange(listRole);
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "删除成功！";
            }
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
    }
}
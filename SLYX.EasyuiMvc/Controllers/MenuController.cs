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
        public ActionResult GetParentMenuList()
        {
            var rows = _menuBLL.LoadEntities(u => u.ParentId == 0);
            
            return Content(rows.ToJson());
        }
        public ActionResult MenuList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "err", Msg = "加载失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var data = _menuBLL.LoadPageEntities(pageIndex, pageSize, out total, u => u.Id>0, true, u => u.Id);
            var result = new { total = total, rows = data };
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Add()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "新增失败！" };
            User sessionUser = Session["ainfo"] as User;
            Menu menuModel = new Menu();
            string menuName = Request["MenuName"];
            string linkurl = Request["LinkAddress"];
            string Code = Request["Code"];
            string icon = Request["Icon"];
            string sort = Request["Sort"];
            string ParentId = Request["ParentId"];
            string id = Request["hideId"];
            menuModel.Name = menuName;
            menuModel.Code = Code;
            menuModel.Icon = icon;
            menuModel.ParentId = string.IsNullOrEmpty(ParentId)==true?0:int.Parse(ParentId);
            menuModel.Sort = int.Parse(sort);
            menuModel.LinkAddress = linkurl;
            menuModel.CreateTime = DateTime.Now;
            menuModel.CreateBy = sessionUser.AccountName;

            bool flag = false;
            if (id != "" && id != "0")
            {
                menuModel.Id = int.Parse(id);
                menuModel.UpdateBy = sessionUser.AccountName;
                menuModel.UpdateTime = DateTime.Now;
                flag = _menuBLL.UpdateEntity(menuModel);
            }
            else
            {
                flag = _menuBLL.AddEntity(menuModel) > 0;
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
            List<Menu> listObj = new List<Menu>();
            foreach (string item in result)
            {
                //if (sessionUser.ID.ToString() == item)
                //{
                //    ajaxMsg.Msg = "不能删除当前登录账户";
                //    return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
                //}
                Menu obj = _menuBLL.Find(int.Parse(item));
                if (obj != null)
                {
                    listObj.Add(obj);
                }
            }

            bool flag = _menuBLL.RemoveRange(listObj);
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "删除成功！";
            }
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
    }
}
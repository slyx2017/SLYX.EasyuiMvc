using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SLYX.BLL;
using SLYX.IBLL;
using SLYX.Model;
namespace SLYX.EasyuiMvc.Controllers
{
    public class HomeController : BaseController
    {
        private IMenuBLL _menuBLL;
        public HomeController(IMenuBLL menubll)
        {
            _menuBLL = menubll;
        }
        // GET: Home
        public ActionResult Index()
        {
            User usr = Session["ainfo"] as User;
            ViewBag.AccountName = usr.AccountName;
            ViewBag.Title = "Mvc+EF+EasyUI";
            return View();
        }
        public ActionResult InitMenu(string pid = "0")
        {
            try
            {
                int id = int.Parse(pid);
                var temp = _menuBLL.LoadEntities(u => u.ParentId == id);
                MenuModel menu = null;
                List<MenuModel> list = new List<MenuModel>();
                foreach (var item in temp)
                {
                    menu = new MenuModel();
                    menu.id = item.Id;
                    menu.text = item.Name;
                    menu.attributes = item.LinkAddress;
                    menu.iconCls = item.Icon;
                    menu.state = temp.Select(u => u.ParentId == item.Id).Count() > 0 ? "open" : "closed";
                    list.Add(menu);
                }
                return Json(list, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json("0", JsonRequestBehavior.AllowGet);
            }
        }
    }

    public class MenuModel
    {
        public int id { get; set; }
        public string text { get; set; }
        public string attributes { get; set; }
        public string iconCls { get; set; }
        public string state { get; set; }
    }
}
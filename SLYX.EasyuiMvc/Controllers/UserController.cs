using System.Collections.Generic;
using System.Web.Mvc;
using SLYX.Model;
using SLYX.BLL;
using SLYX.Common;
using System.Data.Entity;
using System;
using System.Linq;

namespace SLYX.EasyuiMvc.Controllers
{
    public class UserController : MvcControllerBase
    {
        private IBLL.IUser_Role_DeptViewBLL _userviewBLL;
        private IBLL.IUserBLL _userBLL;
        private IBLL.IUserRoleBLL _urBLL;
        private IBLL.IDepartmentBLL _deptBLL;
        private IBLL.IUserDepartmentBLL _udBLL;
        private IBLL.IRoleBLL _roleBLL;
        public User_Role_DeptView UserModel = new User_Role_DeptView();
        public UserController(IBLL.IUser_Role_DeptViewBLL uviewbll, IBLL.IUserBLL ubll,IBLL.IRoleBLL rolebll, IBLL.IDepartmentBLL deptbll,IBLL.IUserRoleBLL ur_bll, IBLL.IUserDepartmentBLL udbll)
        {
            _userviewBLL = uviewbll;
            _userBLL = ubll;
            _roleBLL = rolebll;
            _urBLL = ur_bll;
            _udBLL = udbll;
            _deptBLL = deptbll;
        }
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult UserList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "登录失败！" };
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 20 : int.Parse(Request["rows"]);
            int total = 0;
            var rows = _userviewBLL.LoadPageEntities(pageIndex, pageSize, out total, u => u.IsDel == false, true, u => u.ID);

            //var result = new { total = total, rows = data };
            return Json(new GridDataHelper<User_Role_DeptView>(rows, total), JsonRequestBehavior.AllowGet);
        }

        public ActionResult Add()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "新增失败！" };
            User sessionUser = Session["ainfo"] as User;

            User userModel = new User();
            string accountName = Request["AccountName"];
            string nickName = Request["RealName"];
            string mobile = Request["MobilePhone"];
            string email = Request["Email"];
            string isable = Request["IsAble"];
            string id = Request["hideId"];
            userModel.AccountName = accountName;
            userModel.RealName = nickName;
            userModel.MobilePhone = mobile;
            userModel.Email = email;
            userModel.IsAble = isable == "1" ? true : false;
            userModel.IfChangePwd = false;
            userModel.CreateTime = DateTime.Now;
            userModel.CreateBy = sessionUser.AccountName;
            
            userModel.IsDel = false;
            bool flag = false;
            if (id!=""&& id!="0")
            {
                userModel.ID = int.Parse(id);
                userModel.UpdateBy= sessionUser.AccountName;
                userModel.UpdateTime = DateTime.Now;
                flag = _userBLL.UpdateEntity(userModel);
            }
            else
            {
                flag = _userBLL.AddEntity(userModel)>0;
            }
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "提交成功！";
            }
            //var json = Newtonsoft.Json.JsonConvert.SerializeObject(ajaxMsg);
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
        public ActionResult SelRoleList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "加载失败！" };
            var rows = _roleBLL.LoadEntities(u => u.IsAble == true);
            UserRole ur_Model = new UserRole();

            int uid = int.Parse(Request["UserId"]);
            ur_Model = _urBLL.Find(uid);
            if (rows != null)
            {
                ajaxMsg.Statu = "ok";
                if (ur_Model == null)
                {
                    ajaxMsg.Msg = "";
                }
                else
                {
                    ajaxMsg.Msg = ur_Model.RoleId.ToString();
                }
                ajaxMsg.Data = rows;
            }
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
        public ActionResult AddRole()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "新增失败！" };
 
            int? roleId = int.Parse(Request["sel_Permiss"]);
            int uid = int.Parse(Request["userId"]);
            bool flag = false;
            UserRole urObject= _urBLL.Find(uid);
            if (urObject==null)
            {
                urObject = new UserRole();
                urObject.UserId = uid;
                urObject.RoleId = roleId;
                flag = _urBLL.AddEntity(urObject) >0;
            }
            else
            {
                urObject.RoleId = roleId;
                flag = _urBLL.UpdateEntity(urObject);
            }
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "提交成功！";
            }
            //var json = Newtonsoft.Json.JsonConvert.SerializeObject(ajaxMsg);
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
        public ActionResult SelDeptList()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "加载失败！" };
            var rows = _deptBLL.LoadEntities(u => u.IsAble == true);
            UserDepartment ud_Model = new UserDepartment();

            int uid = int.Parse(Request["UserId"]);
            ud_Model = _udBLL.Find(uid);
            if (rows != null)
            {
                ajaxMsg.Statu = "ok";
                if (ud_Model == null)
                {
                    ajaxMsg.Msg = "";
                }
                else
                {
                    ajaxMsg.Msg = ud_Model.DepartmentId.ToString();
                }
                ajaxMsg.Data = rows;
            }
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
        public ActionResult AddDept()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "新增失败！" };
           
            int? deptId = int.Parse(Request["sel_Deptment"]);
            int uid = int.Parse(Request["uId"]);
            bool flag = false;
            UserDepartment udObject =  _udBLL.Find(uid);
            
            if (udObject == null)
            {
                udObject = new UserDepartment();
                udObject.UserId = uid;
                udObject.DepartmentId=deptId;
                flag = _udBLL.AddEntity(udObject) > 0;
            }
            else
            {
                udObject.DepartmentId = deptId;
                flag = _udBLL.UpdateEntity(udObject);
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
            User sessionUser = Session["ainfo"] as User;
            string ids = Request["ids"];
            string[] result = ids.Split(',');
            List<User> listUser = new List<User>();
            foreach (string item in result)
            {
                if (sessionUser.ID.ToString()==item)
                {
                    ajaxMsg.Msg = "不能删除当前登录账户";
                    return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
                }
                User user = _userBLL.Find(int.Parse(item));
                if (user!=null)
                {
                    listUser.Add(user);
                }
            }

            bool flag = _userBLL.RemoveRange(listUser);
            if (flag)
            {
                ajaxMsg.Statu = "ok";
                ajaxMsg.Msg = "删除成功！";
            }
            return Json(ajaxMsg, JsonRequestBehavior.AllowGet);
        }
        public ActionResult FindBy()
        {
            AjaxMsgModel ajaxMsg = new AjaxMsgModel() { Statu = "error", Msg = "查找失败！" };
            string id = Request["id"];
            User UserModel = new User();
            UserModel = _userBLL.Find(int.Parse(id));
            return Json(UserModel, JsonRequestBehavior.AllowGet);
        }
    }
}
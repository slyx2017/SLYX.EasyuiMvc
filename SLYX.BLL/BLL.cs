
using System;
using SLYX.Model;

namespace SLYX.BLL
{

        public partial class ArticleBLL : BaseBLL<Model.Article>, IBLL.IArticleBLL
		{
		    public override void SetCurrentRepository()
        {
				//设置当前仓储为Article仓储
				CurrentRepository = _dbSession.ArticleDAL;
			}
		}
        public partial class Base_LogBLL : BaseBLL<Model.Base_Log>, IBLL.IBase_LogBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Base_Log仓储
				CurrentRepository = _dbSession.Base_LogDAL;
			}
        }
        public partial class ButtonBLL : BaseBLL<Model.Button>, IBLL.IButtonBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Button仓储
				CurrentRepository = _dbSession.ButtonDAL;
			}
		}
        public partial class DataTypeBLL : BaseBLL<Model.DataType>, IBLL.IDataTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为DataType仓储
				CurrentRepository = _dbSession.DataTypeDAL;
			}
		}
        public partial class DepartmentBLL : BaseBLL<Model.Department>, IBLL.IDepartmentBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Department仓储
				CurrentRepository = _dbSession.DepartmentDAL;
			}
		}
        public partial class FieldsBLL : BaseBLL<Model.Fields>, IBLL.IFieldsBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Fields仓储
				CurrentRepository = _dbSession.FieldsDAL;
			}
		}
        public partial class HtmlTypeBLL : BaseBLL<Model.HtmlType>, IBLL.IHtmlTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为HtmlType仓储
				CurrentRepository = _dbSession.HtmlTypeDAL;
			}
		}
        public partial class IconsBLL : BaseBLL<Model.Icons>, IBLL.IIconsBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Icons仓储
				CurrentRepository = _dbSession.IconsDAL;
			}
		}
        public partial class MenuBLL : BaseBLL<Model.Menu>, IBLL.IMenuBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Menu仓储
				CurrentRepository = _dbSession.MenuDAL;
			}
		}
        public partial class MenuButtonBLL : BaseBLL<Model.MenuButton>, IBLL.IMenuButtonBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为MenuButton仓储
				CurrentRepository = _dbSession.MenuButtonDAL;
			}
		}
        public partial class NewsBLL : BaseBLL<Model.News>, IBLL.INewsBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为News仓储
				CurrentRepository = _dbSession.NewsDAL;
			}
		}
        public partial class NewsTypeBLL : BaseBLL<Model.NewsType>, IBLL.INewsTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为NewsType仓储
				CurrentRepository = _dbSession.NewsTypeDAL;
			}
		}
        public partial class RequestionBLL : BaseBLL<Model.Requestion>, IBLL.IRequestionBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Requestion仓储
				CurrentRepository = _dbSession.RequestionDAL;
			}
		}
        public partial class RequestionTypeBLL : BaseBLL<Model.RequestionType>, IBLL.IRequestionTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为RequestionType仓储
				CurrentRepository = _dbSession.RequestionTypeDAL;
			}
		}
        public partial class RoleBLL : BaseBLL<Model.Role>, IBLL.IRoleBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Role仓储
				CurrentRepository = _dbSession.RoleDAL;
			}
		}
        public partial class RoleMenuBLL : BaseBLL<Model.RoleMenu>, IBLL.IRoleMenuBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为RoleMenu仓储
				CurrentRepository = _dbSession.RoleMenuDAL;
			}
		}
        public partial class RoleMenuButtonBLL : BaseBLL<Model.RoleMenuButton>, IBLL.IRoleMenuButtonBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为RoleMenuButton仓储
				CurrentRepository = _dbSession.RoleMenuButtonDAL;
			}
		}
        public partial class TableBLL : BaseBLL<Model.Table>, IBLL.ITableBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Table仓储
				CurrentRepository = _dbSession.TableDAL;
			}
		}
        public partial class UserBLL : BaseBLL<Model.User>, IBLL.IUserBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为User仓储
				CurrentRepository = _dbSession.UserDAL;
			}
		}
        public partial class User_Role_DeptViewBLL : BaseBLL<Model.User_Role_DeptView>, IBLL.IUser_Role_DeptViewBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为User_Role_DeptView仓储
				CurrentRepository = _dbSession.User_Role_DeptViewDAL;
			}
		}
        public partial class UserDepartmentBLL : BaseBLL<Model.UserDepartment>, IBLL.IUserDepartmentBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为UserDepartment仓储
				CurrentRepository = _dbSession.UserDepartmentDAL;
			}
		}
        public partial class UserRoleBLL : BaseBLL<Model.UserRole>, IBLL.IUserRoleBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为UserRole仓储
				CurrentRepository = _dbSession.UserRoleDAL;
			}
		}

}
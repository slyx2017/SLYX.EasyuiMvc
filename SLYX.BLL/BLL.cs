
using System;
using SLYX.Model;
using SLYX.IBLL;
using SLYX.DAL;
namespace SLYX.BLL
{

        public partial class ArticleBLL : BaseBLL<Article>, IArticleBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Article仓储
				CurrentRepository = _dbSession.ArticleDAL;
			}
		}
        public partial class ButtonBLL : BaseBLL<Button>, IButtonBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Button仓储
				CurrentRepository = _dbSession.ButtonDAL;
			}
		}
        public partial class DataTypeBLL : BaseBLL<DataType>, IDataTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为DataType仓储
				CurrentRepository = _dbSession.DataTypeDAL;
			}
		}
        public partial class DepartmentBLL : BaseBLL<Department>, IDepartmentBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Department仓储
				CurrentRepository = _dbSession.DepartmentDAL;
			}
		}
        public partial class FieldsBLL : BaseBLL<Fields>, IFieldsBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Fields仓储
				CurrentRepository = _dbSession.FieldsDAL;
			}
		}
        public partial class HtmlTypeBLL : BaseBLL<HtmlType>, IHtmlTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为HtmlType仓储
				CurrentRepository = _dbSession.HtmlTypeDAL;
			}
		}
        public partial class IconsBLL : BaseBLL<Icons>, IIconsBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Icons仓储
				CurrentRepository = _dbSession.IconsDAL;
			}
		}
        public partial class MenuBLL : BaseBLL<Menu>, IMenuBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Menu仓储
				CurrentRepository = _dbSession.MenuDAL;
			}
		}
        public partial class MenuButtonBLL : BaseBLL<MenuButton>, IMenuButtonBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为MenuButton仓储
				CurrentRepository = _dbSession.MenuButtonDAL;
			}
		}
        public partial class NewsBLL : BaseBLL<News>, INewsBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为News仓储
				CurrentRepository = _dbSession.NewsDAL;
			}
		}
        public partial class NewsTypeBLL : BaseBLL<NewsType>, INewsTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为NewsType仓储
				CurrentRepository = _dbSession.NewsTypeDAL;
			}
		}
        public partial class RequestionBLL : BaseBLL<Requestion>, IRequestionBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Requestion仓储
				CurrentRepository = _dbSession.RequestionDAL;
			}
		}
        public partial class RequestionTypeBLL : BaseBLL<RequestionType>, IRequestionTypeBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为RequestionType仓储
				CurrentRepository = _dbSession.RequestionTypeDAL;
			}
		}
        public partial class RoleBLL : BaseBLL<Role>, IRoleBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Role仓储
				CurrentRepository = _dbSession.RoleDAL;
			}
		}
        public partial class RoleMenuBLL : BaseBLL<RoleMenu>, IRoleMenuBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为RoleMenu仓储
				CurrentRepository = _dbSession.RoleMenuDAL;
			}
		}
        public partial class RoleMenuButtonBLL : BaseBLL<RoleMenuButton>, IRoleMenuButtonBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为RoleMenuButton仓储
				CurrentRepository = _dbSession.RoleMenuButtonDAL;
			}
		}
        public partial class TableBLL : BaseBLL<Table>, ITableBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为Table仓储
				CurrentRepository = _dbSession.TableDAL;
			}
		}
        public partial class UserBLL : BaseBLL<User>, IUserBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为User仓储
				CurrentRepository = _dbSession.UserDAL;
			}
		}
        public partial class UserDepartmentBLL : BaseBLL<UserDepartment>, IUserDepartmentBLL
		{
		    public override void SetCurrentRepository()
			{
				//设置当前仓储为UserDepartment仓储
				CurrentRepository = _dbSession.UserDepartmentDAL;
			}
		}

}
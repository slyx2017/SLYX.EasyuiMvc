
using System;
using SLYX.Model;
using SLYX.IBLL;
namespace SLYX.BLL
{

        public partial class ArticleBLL : BaseBLL<Article>, IArticleBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.ArticleDAL;
				}
		}
        public partial class ButtonBLL : BaseBLL<Button>, IButtonBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.ButtonDAL;
				}
		}
        public partial class DataTypeBLL : BaseBLL<DataType>, IDataTypeBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.DataTypeDAL;
				}
		}
        public partial class DepartmentBLL : BaseBLL<Department>, IDepartmentBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.DepartmentDAL;
				}
		}
        public partial class FieldsBLL : BaseBLL<Fields>, IFieldsBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.FieldsDAL;
				}
		}
        public partial class HtmlTypeBLL : BaseBLL<HtmlType>, IHtmlTypeBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.HtmlTypeDAL;
				}
		}
        public partial class IconsBLL : BaseBLL<Icons>, IIconsBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.IconsDAL;
				}
		}
        public partial class MenuBLL : BaseBLL<Menu>, IMenuBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.MenuDAL;
				}
		}
        public partial class MenuButtonBLL : BaseBLL<MenuButton>, IMenuButtonBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.MenuButtonDAL;
				}
		}
        public partial class NewsBLL : BaseBLL<News>, INewsBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.NewsDAL;
				}
		}
        public partial class NewsTypeBLL : BaseBLL<NewsType>, INewsTypeBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.NewsTypeDAL;
				}
		}
        public partial class RequestionBLL : BaseBLL<Requestion>, IRequestionBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.RequestionDAL;
				}
		}
        public partial class RequestionTypeBLL : BaseBLL<RequestionType>, IRequestionTypeBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.RequestionTypeDAL;
				}
		}
        public partial class RoleBLL : BaseBLL<Role>, IRoleBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.RoleDAL;
				}
		}
        public partial class RoleMenuBLL : BaseBLL<RoleMenu>, IRoleMenuBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.RoleMenuDAL;
				}
		}
        public partial class RoleMenuButtonBLL : BaseBLL<RoleMenuButton>, IRoleMenuButtonBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.RoleMenuButtonDAL;
				}
		}
        public partial class TableBLL : BaseBLL<Table>, ITableBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.TableDAL;
				}
		}
        public partial class UserBLL : BaseBLL<User>, IUserBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.UserDAL;
				}
		}
        public partial class UserDepartmentBLL : BaseBLL<UserDepartment>, IUserDepartmentBLL
		{
		        public override void SetCurrentRepository()
				{
					//设置当前仓储为Role仓储
					CurrentRepository = DAL.DbContextFactory.UserDepartmentDAL;
				}
		}

}
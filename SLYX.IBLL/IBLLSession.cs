

namespace SLYX.IBLL
{

    //在这里需要一个for循环来遍历数据库中所有的表放置在下面即可，这样就实现了所有的表对应的仓储显示出来了。
		public interface IBLLSession
		{
		    IArticleBLL ArticleBLL{get;}
		    IButtonBLL ButtonBLL{get;}
		    IDataTypeBLL DataTypeBLL{get;}
		    IDepartmentBLL DepartmentBLL{get;}
		    IFieldsBLL FieldsBLL{get;}
		    IHtmlTypeBLL HtmlTypeBLL{get;}
		    IIconsBLL IconsBLL{get;}
		    IMenuBLL MenuBLL{get;}
		    IMenuButtonBLL MenuButtonBLL{get;}
		    INewsBLL NewsBLL{get;}
		    INewsTypeBLL NewsTypeBLL{get;}
		    IRequestionBLL RequestionBLL{get;}
		    IRequestionTypeBLL RequestionTypeBLL{get;}
		    IRoleBLL RoleBLL{get;}
		    IRoleMenuBLL RoleMenuBLL{get;}
		    IRoleMenuButtonBLL RoleMenuButtonBLL{get;}
		    ITableBLL TableBLL{get;}
		    IUserBLL UserBLL{get;}
		    IUser_Role_DeptViewBLL User_Role_DeptViewBLL{get;}
		    IUserDepartmentBLL UserDepartmentBLL{get;}
		    IUserRoleBLL UserRoleBLL{get;}
            int SaveChanges();
		   
        }
}
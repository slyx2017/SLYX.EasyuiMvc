
using System.Data.Objects;
using SLYX.Model;
using System.Data.Common;
namespace SLYX.IDAL
{

    //在这里需要一个for循环来遍历数据库中所有的表放置在下面即可，这样就实现了所有的表对应的仓储显示出来了。
		public interface IDBSession
		{
		    IArticleDAL ArticleDAL{get;}
		    IBase_LogDAL Base_LogDAL{get;}
		    IButtonDAL ButtonDAL{get;}
		    IDataTypeDAL DataTypeDAL{get;}
		    IDepartmentDAL DepartmentDAL{get;}
		    IFieldsDAL FieldsDAL{get;}
		    IHtmlTypeDAL HtmlTypeDAL{get;}
		    IIconsDAL IconsDAL{get;}
		    IMenuDAL MenuDAL{get;}
		    IMenuButtonDAL MenuButtonDAL{get;}
		    INewsDAL NewsDAL{get;}
		    INewsTypeDAL NewsTypeDAL{get;}
		    IRequestionDAL RequestionDAL{get;}
		    IRequestionTypeDAL RequestionTypeDAL{get;}
		    IRoleDAL RoleDAL{get;}
		    IRoleMenuDAL RoleMenuDAL{get;}
		    IRoleMenuButtonDAL RoleMenuButtonDAL{get;}
		    ITableDAL TableDAL{get;}
		    IUserDAL UserDAL{get;}
		    IUser_Role_DeptViewDAL User_Role_DeptViewDAL{get;}
		    IUserDepartmentDAL UserDepartmentDAL{get;}
		    IUserRoleDAL UserRoleDAL{get;}
            int SaveChanges();
        }
}
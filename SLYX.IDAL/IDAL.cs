
using System.Data.Objects;
using SLYX.Model;
namespace SLYX.IDAL
{

    //在这里需要一个for循环来遍历数据库中所有的表放置在下面即可，这样就实现了所有的表对应的仓储显示出来了。

        public partial interface IArticleDAL : IBaseDAL<Article>
		{

		}
        public partial interface IButtonDAL : IBaseDAL<Button>
		{

		}
        public partial interface IDataTypeDAL : IBaseDAL<DataType>
		{

		}
        public partial interface IDepartmentDAL : IBaseDAL<Department>
		{

		}
        public partial interface IFieldsDAL : IBaseDAL<Fields>
		{

		}
        public partial interface IHtmlTypeDAL : IBaseDAL<HtmlType>
		{

		}
        public partial interface IIconsDAL : IBaseDAL<Icons>
		{

		}
        public partial interface IMenuDAL : IBaseDAL<Menu>
		{

		}
        public partial interface IMenuButtonDAL : IBaseDAL<MenuButton>
		{

		}
        public partial interface INewsDAL : IBaseDAL<News>
		{

		}
        public partial interface INewsTypeDAL : IBaseDAL<NewsType>
		{

		}
        public partial interface IRequestionDAL : IBaseDAL<Requestion>
		{

		}
        public partial interface IRequestionTypeDAL : IBaseDAL<RequestionType>
		{

		}
        public partial interface IRoleDAL : IBaseDAL<Role>
		{

		}
        public partial interface IRoleMenuDAL : IBaseDAL<RoleMenu>
		{

		}
        public partial interface IRoleMenuButtonDAL : IBaseDAL<RoleMenuButton>
		{

		}
        public partial interface ITableDAL : IBaseDAL<Table>
		{

		}
        public partial interface IUserDAL : IBaseDAL<User>
		{

		}
        public partial interface IUser_Role_DeptViewDAL : IBaseDAL<User_Role_DeptView>
		{

		}
        public partial interface IUserDepartmentDAL : IBaseDAL<UserDepartment>
		{

		}
        public partial interface IUserRoleDAL : IBaseDAL<UserRole>
		{

		}

}
using System.Data.Objects;
using SLYX.Model;
using SLYX.IDAL;
namespace SLYX.DAL
{
    public partial class ArticleDAL : BaseDAL<Article>, IArticleDAL
    {
    }
    public partial class ButtonDAL : BaseDAL<Button>, IButtonDAL
    {
    }
    public partial class DataTypeDAL : BaseDAL<DataType>, IDataTypeDAL
    {
    }
    public partial class DepartmentDAL : BaseDAL<Department>, IDepartmentDAL
    {
    }
    public partial class FieldsDAL : BaseDAL<Fields>, IFieldsDAL
    {
    }
    public partial class HtmlTypeDAL : BaseDAL<HtmlType>, IHtmlTypeDAL
    {
    }
    public partial class IconsDAL : BaseDAL<Icons>, IIconsDAL
    {
    }
    public partial class MenuDAL : BaseDAL<Menu>, IMenuDAL
    {
    }
    public partial class MenuButtonDAL : BaseDAL<MenuButton>, IMenuButtonDAL
    {
    }
    public partial class NewsDAL : BaseDAL<News>, INewsDAL
    {
    }
    public partial class NewsTypeDAL : BaseDAL<NewsType>, INewsTypeDAL
    {
    }
    public partial class RequestionDAL : BaseDAL<Requestion>, IRequestionDAL
    {
    }
    public partial class RequestionTypeDAL : BaseDAL<RequestionType>, IRequestionTypeDAL
    {
    }
    public partial class RoleDAL : BaseDAL<Role>, IRoleDAL
    {
    }
    public partial class RoleMenuDAL : BaseDAL<RoleMenu>, IRoleMenuDAL
    {
    }
    public partial class RoleMenuButtonDAL : BaseDAL<RoleMenuButton>, IRoleMenuButtonDAL
    {
    }
    public partial class TableDAL : BaseDAL<Table>, ITableDAL
    {
    }
    public partial class UserDAL : BaseDAL<User>, IUserDAL
    {
    }
    public partial class UserDepartmentDAL : BaseDAL<UserDepartment>, IUserDepartmentDAL
    {
    }
}
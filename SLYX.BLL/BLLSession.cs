
using System;
using SLYX.Model;
using SLYX.IBLL;
namespace SLYX.BLL
{
    public class BLLSession:IBLLSession
	{

		public IArticleBLL ArticleBLL
		{
			get { return new ArticleBLL(); }
		}

   
		public IBase_LogBLL Base_LogBLL
		{
			get { return new Base_LogBLL(); }
		}

   
		public IButtonBLL ButtonBLL
		{
			get { return new ButtonBLL(); }
		}

   
		public IDataTypeBLL DataTypeBLL
		{
			get { return new DataTypeBLL(); }
		}

   
		public IDepartmentBLL DepartmentBLL
		{
			get { return new DepartmentBLL(); }
		}

   
		public IFieldsBLL FieldsBLL
		{
			get { return new FieldsBLL(); }
		}

   
		public IHtmlTypeBLL HtmlTypeBLL
		{
			get { return new HtmlTypeBLL(); }
		}

   
		public IIconsBLL IconsBLL
		{
			get { return new IconsBLL(); }
		}

   
		public IMenuBLL MenuBLL
		{
			get { return new MenuBLL(); }
		}

   
		public IMenuButtonBLL MenuButtonBLL
		{
			get { return new MenuButtonBLL(); }
		}

   
		public INewsBLL NewsBLL
		{
			get { return new NewsBLL(); }
		}

   
		public INewsTypeBLL NewsTypeBLL
		{
			get { return new NewsTypeBLL(); }
		}

   
		public IRequestionBLL RequestionBLL
		{
			get { return new RequestionBLL(); }
		}

   
		public IRequestionTypeBLL RequestionTypeBLL
		{
			get { return new RequestionTypeBLL(); }
		}

   
		public IRoleBLL RoleBLL
		{
			get { return new RoleBLL(); }
		}

   
		public IRoleMenuBLL RoleMenuBLL
		{
			get { return new RoleMenuBLL(); }
		}

   
		public IRoleMenuButtonBLL RoleMenuButtonBLL
		{
			get { return new RoleMenuButtonBLL(); }
		}

   
		public ITableBLL TableBLL
		{
			get { return new TableBLL(); }
		}

   
		public IUserBLL UserBLL
		{
			get { return new UserBLL(); }
		}

   
		public IUser_Role_DeptViewBLL User_Role_DeptViewBLL
		{
			get { return new User_Role_DeptViewBLL(); }
		}

   
		public IUserDepartmentBLL UserDepartmentBLL
		{
			get { return new UserDepartmentBLL(); }
		}

   
		public IUserRoleBLL UserRoleBLL
		{
			get { return new UserRoleBLL(); }
		}

        public int SaveChanges()
        {
            return -1;
        }
    }
}
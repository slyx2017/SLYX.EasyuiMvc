
using System;
using SLYX.Model;
using SLYX.IDAL;
using System.Data.Common;

namespace SLYX.DAL
{
    public class DBSession:IDBSession
	{

		public IArticleDAL ArticleDAL
		{
			get { return new ArticleDAL(); }
		}
		

		public IButtonDAL ButtonDAL
		{
			get { return new ButtonDAL(); }
		}
		

		public IDataTypeDAL DataTypeDAL
		{
			get { return new DataTypeDAL(); }
		}
		

		public IDepartmentDAL DepartmentDAL
		{
			get { return new DepartmentDAL(); }
		}
		

		public IFieldsDAL FieldsDAL
		{
			get { return new FieldsDAL(); }
		}
		

		public IHtmlTypeDAL HtmlTypeDAL
		{
			get { return new HtmlTypeDAL(); }
		}
		

		public IIconsDAL IconsDAL
		{
			get { return new IconsDAL(); }
		}
		

		public IMenuDAL MenuDAL
		{
			get { return new MenuDAL(); }
		}
		

		public IMenuButtonDAL MenuButtonDAL
		{
			get { return new MenuButtonDAL(); }
		}
		

		public INewsDAL NewsDAL
		{
			get { return new NewsDAL(); }
		}
		

		public INewsTypeDAL NewsTypeDAL
		{
			get { return new NewsTypeDAL(); }
		}
		

		public IRequestionDAL RequestionDAL
		{
			get { return new RequestionDAL(); }
		}
		

		public IRequestionTypeDAL RequestionTypeDAL
		{
			get { return new RequestionTypeDAL(); }
		}
		

		public IRoleDAL RoleDAL
		{
			get { return new RoleDAL(); }
		}
		

		public IRoleMenuDAL RoleMenuDAL
		{
			get { return new RoleMenuDAL(); }
		}
		

		public IRoleMenuButtonDAL RoleMenuButtonDAL
		{
			get { return new RoleMenuButtonDAL(); }
		}
		

		public ITableDAL TableDAL
		{
			get { return new TableDAL(); }
		}
		

		public IUserDAL UserDAL
		{
			get { return new UserDAL(); }
		}
		

		public IUserDepartmentDAL UserDepartmentDAL
		{
			get { return new UserDepartmentDAL(); }
		}
		
        public int SaveChanges() 
		{
			return EFContextFactory.GetCurrentDbContext().SaveChanges();
		}

        public int ExcuteSql(string strSql, DbParameter[] parameters)
        {
            throw new NotImplementedException();
        }
    }
}
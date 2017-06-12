
using System;
using SLYX.Model;
using SLYX.IDAL;
namespace SLYX.DAL
{
        public static class RepositoryFactory
		{

			 public static IArticleDAL ArticleDAL 
			 {
				 get { return new ArticleDAL(); }
			 }
		

			 public static IButtonDAL ButtonDAL 
			 {
				 get { return new ButtonDAL(); }
			 }
		

			 public static IDataTypeDAL DataTypeDAL 
			 {
				 get { return new DataTypeDAL(); }
			 }
		

			 public static IDepartmentDAL DepartmentDAL 
			 {
				 get { return new DepartmentDAL(); }
			 }
		

			 public static IFieldsDAL FieldsDAL 
			 {
				 get { return new FieldsDAL(); }
			 }
		

			 public static IHtmlTypeDAL HtmlTypeDAL 
			 {
				 get { return new HtmlTypeDAL(); }
			 }
		

			 public static IIconsDAL IconsDAL 
			 {
				 get { return new IconsDAL(); }
			 }
		

			 public static IMenuDAL MenuDAL 
			 {
				 get { return new MenuDAL(); }
			 }
		

			 public static IMenuButtonDAL MenuButtonDAL 
			 {
				 get { return new MenuButtonDAL(); }
			 }
		

			 public static INewsDAL NewsDAL 
			 {
				 get { return new NewsDAL(); }
			 }
		

			 public static INewsTypeDAL NewsTypeDAL 
			 {
				 get { return new NewsTypeDAL(); }
			 }
		

			 public static IRequestionDAL RequestionDAL 
			 {
				 get { return new RequestionDAL(); }
			 }
		

			 public static IRequestionTypeDAL RequestionTypeDAL 
			 {
				 get { return new RequestionTypeDAL(); }
			 }
		

			 public static IRoleDAL RoleDAL 
			 {
				 get { return new RoleDAL(); }
			 }
		

			 public static IRoleMenuDAL RoleMenuDAL 
			 {
				 get { return new RoleMenuDAL(); }
			 }
		

			 public static IRoleMenuButtonDAL RoleMenuButtonDAL 
			 {
				 get { return new RoleMenuButtonDAL(); }
			 }
		

			 public static ITableDAL TableDAL 
			 {
				 get { return new TableDAL(); }
			 }
		

			 public static IUserDAL UserDAL 
			 {
				 get { return new UserDAL(); }
			 }
		

			 public static IUserDepartmentDAL UserDepartmentDAL 
			 {
				 get { return new UserDepartmentDAL(); }
			 }
		
}
}
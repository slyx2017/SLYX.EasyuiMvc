﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace SLYX.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ZxDBEntities : DbContext
    {
        public ZxDBEntities()
            : base("name=ZxDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Article> Article { get; set; }
        public virtual DbSet<Button> Button { get; set; }
        public virtual DbSet<DataType> DataType { get; set; }
        public virtual DbSet<Department> Department { get; set; }
        public virtual DbSet<Fields> Fields { get; set; }
        public virtual DbSet<HtmlType> HtmlType { get; set; }
        public virtual DbSet<Icons> Icons { get; set; }
        public virtual DbSet<Menu> Menu { get; set; }
        public virtual DbSet<MenuButton> MenuButton { get; set; }
        public virtual DbSet<News> News { get; set; }
        public virtual DbSet<NewsType> NewsType { get; set; }
        public virtual DbSet<Requestion> Requestion { get; set; }
        public virtual DbSet<RequestionType> RequestionType { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<RoleMenu> RoleMenu { get; set; }
        public virtual DbSet<RoleMenuButton> RoleMenuButton { get; set; }
        public virtual DbSet<Table> Table { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<UserDepartment> UserDepartment { get; set; }
    }
}
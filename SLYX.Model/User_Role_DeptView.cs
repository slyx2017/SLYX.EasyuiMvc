//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class User_Role_DeptView
    {
        public int ID { get; set; }
        public string AccountName { get; set; }
        public string Password { get; set; }
        public string RealName { get; set; }
        public string MobilePhone { get; set; }
        public string Email { get; set; }
        public Nullable<bool> IsAble { get; set; }
        public Nullable<bool> IfChangePwd { get; set; }
        public string Description { get; set; }
        public string CreateBy { get; set; }
        public Nullable<System.DateTime> CreateTime { get; set; }
        public string UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateTime { get; set; }
        public Nullable<bool> IsDel { get; set; }
        public string RoleName { get; set; }
        public string DepartmentName { get; set; }
    }
}

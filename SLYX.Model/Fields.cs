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
    
    public partial class Fields
    {
        public int Id { get; set; }
        public int TabId { get; set; }
        public string FieldName { get; set; }
        public string FieldViewName { get; set; }
        public int FieldDataTypeId { get; set; }
        public bool IsActive { get; set; }
        public Nullable<bool> IsSearch { get; set; }
        public Nullable<int> Sort { get; set; }
        public System.DateTime CreateTime { get; set; }
        public string CreateBy { get; set; }
        public Nullable<System.DateTime> UpdateTime { get; set; }
        public string UpdateBy { get; set; }
    }
}

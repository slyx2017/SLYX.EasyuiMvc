$(function () {
    $("#ui_user_dg").datagrid({
        url: "/User/GetAllUserInfo",
        striped: true, rownumbers: true, pagination: true, pageSize: 20, fitColumns: true,
        idField: 'ID',
        pageList: [20, 40, 60, 80, 100],
        rowStyler: function (index, row) {
            if (!row.IsAble) {
                return 'background-color:#696969;color:#fff;font-weight:bold;';
            }
        },
        frozenColumns: [[
                         { field: 'ck', checkbox: true },
                         { width: 100, title: '登录名', field: 'AccountName' },
                         { width: 100, title: '用户名称', field: 'RealName' },
                         {
                             field: 'UserRole', title: '所属角色', width: 200,
                             formatter: function (value, row, index) {
                                 if (value != null) {
                                     return value.length > 12 ? '<span title="' + value + '">' + value + '</span>' : value;
                                 }
                             }
                         },
                         { field: 'UserDepartment', title: '部门', width: 150 }
        ]],
        columns: [[
                   { field: 'MobilePhone', title: '联系人手机', width: 100 },
                   { field: 'Email', title: '邮箱', width: 150 },
                   {
                       field: 'IsAble', title: '启用', width: 40, align: 'center'
                       ,
                       formatter: function (value, row, index) {
                           return value ? '<img src="../../Content/themes/icon/chk_checked.gif" alt="已启用" title="用户已启用" />' : '<img src="../../Content/themes/icon/chk_unchecked.gif" alt="未启用" title="用户未启用" />';
                       }
                   },
                   {
                       field: 'IfChangePwd', title: '改密', width: 40, align: 'center',
                       formatter: function (value, row, index) {
                           return value ? '<img src="../../Content/themes/icon/chk_checked.gif" alt="已改密" title="用户已改密" />' : '<img src="../../Content/themes/icon/chk_unchecked.gif" alt="未改密" title="用户未改密" />';
                       }
                   },
                   { field: 'UpdateTime', title: '最后更新时间', width: 130, formatter: formatDatebox },
                   { field: 'UpdateBy', title: '最后更新人', width: 130 }
        ]]
    });
});
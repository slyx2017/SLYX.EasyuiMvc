$(function () {

    var addNewRow = function () {
        clearForm();
        $('#dlg').dialog('open');
        $("#dlg-buttons a:first").attr("onclick", "submitForm(); return false;")
    };
    var beginEdit = function () {
        var row = $("#grid-users").datagrid("getSelections");
        if (row.length == 0) {
            $.messager.alert("系统提示", "请先选中要修改的行。", "warning");
            return;
        }
        if (row.length > 1) {
            $.messager.alert("系统提示", "请选中一条要修改的行。", "warning");
            return;
        }
        $('#dlg').dialog('open');
        $("#hideId").val(row[0].ID);
        $("#AccountName").textbox("setValue",row[0].AccountName);
        $("#RealName").textbox("setValue", row[0].RealName);
        $("#MobilePhone").textbox("setValue", row[0].MobilePhone);
        $("#Email").textbox("setValue", row[0].Email);
        $("#IsAble").combobox("setValue", row[0].IsAble == true ? 1 : 0);
        $("#dlg-buttons a:first").attr("onclick", "submitForm(); return false;")
    };
  
    var deleteRows = function () {
        var selectRows = $("#grid-users").datagrid("getSelections");
        if (selectRows.length == 0) {
            $.messager.alert("系统提示", "请先选中要删除的行。", "warning");
            return;
        }
        var ids = "";
        $.each(selectRows, function (index, value) {
            ids += selectRows[index].ID + ",";
        })
        ids = ids.substring(0, ids.length - 1);
        $.messager.confirm("系统提示", "是否要删除所有选中的行？此操作是不可恢复的。", function (rt) {
            if (rt) {
                $.post("/User/DeleteList", { ids: ids }, function (data) {
                    if (data.Statu == "ok") {
                        $("#grid-users").datagrid("reload").datagrid('clearSelections');
                    }
                    if (data.Statu == "err") {
                        $.messager.alert("系统提示", data.Msg, "error");
                    } else {
                        $.messager.alert("系统提示", data.Msg, "warning");
                    }
                });
            } else {
                return;
            }
        });
       
    };
    var addPermission = function () {
        var row = $("#grid-users").datagrid("getSelections");
        if (row.length == 0) {
            $.messager.alert("系统提示", "请先选中要设置角色的行。", "warning");
            return;
        }
        if (row.length > 1) {
            $.messager.alert("系统提示", "请选中一条要设置角色的行。", "warning");
            return;
        }
        $('#dlgp').dialog('open');
        $("#userId").val(row[0].ID);
        $("#UserName").textbox("setValue", row[0].AccountName);

        $.ajax({
            url: '/User/SelRoleList',
            data: { "UserId": "" + row[0].ID + "" },
            success: function (data) {
                //var obj = JSON.parse(data);
                if (data.Statu == "ok") {
                    var selId=data.Msg;
                    $("#sel_Permiss").combobox({
                        label:'角色:',
                        valueField: 'Id',
                        textField: 'RoleName',
                        value: selId,
                        data: data.Data
                    });
                }
                else {
                    $.messager.alert("系统提示", data.Msg, "error");
                    return;
                }
            }
        });
        $("#dlgp-buttons a:first").attr("onclick", "submitFormP(); return false;")
    };

    var toolbarNavItems =
        [
            { text: "增加", iconCls: "icon-add", handler: addNewRow }, 
            { text: "编辑", iconCls: "icon-edit", handler: beginEdit },
            { text: "删除", iconCls: "icon-remove", handler: deleteRows }, '-',
            { text: "设置角色", iconCls: "icon-large-chart", handler: addPermission },
            { text: "设置部门", iconCls: "icon-large-clipart" }
        ];

    $("#grid-users").datagrid({
        title: "用户信息列表",
        url: "/User/UserList",
        striped: true, rownumbers: true, pagination: true, pageSize: 20, fitColumns: true, fit: true,
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
                         { width: 100, title: '昵称', field: 'RealName' },
                         { field: 'RoleName', title: '角色', width: 200},
                         { field: 'DepartmentName', title: '部门', width: 150 }
        ]],
        columns: [[
                   { field: 'MobilePhone', title: '手机', width: 100 },
                   { field: 'Email', title: '邮箱', width: 150 },
                   {
                       field: 'IsAble', title: '启用', width: 40, align: 'center',
                       formatter: function (value, row, index) {
                           return value;//? '<img src="../../Content/themes/icon/chk_checked.gif" alt="已启用" title="用户已启用" />' : '<img src="../../Content/themes/icon/chk_unchecked.gif" alt="未启用" title="用户未启用" />';
                       }
                   },
                   {
                       field: 'IfChangePwd', title: '改密', width: 40, align: 'center',
                       formatter: function (value, row, index) {
                           return value;//? '<img src="../../Content/themes/icon/chk_checked.gif" alt="已改密" title="用户已改密" />' : '<img src="../../Content/themes/icon/chk_unchecked.gif" alt="未改密" title="用户未改密" />';
                       }
                   },
                   { field: 'CreateBy', title: '创建人', width: 40 },
                   { field: 'CreateTime', title: '创建时间', width: 130, formatter: formatDatebox }
        ]],
        toolbar: toolbarNavItems
    });

});

function submitForm() {
    $('#ff').form('submit', {
        url: "/User/Add",
        onSubmit: function () {
           return $(this).form('validate');
            //var accountname = $("#AccountName").val();
            //if (accountname == "") {
            //    $.messager.alert("系统提示", "账号不能为空", "warning");
            //    return false;
            //}
        },
        success: ajaxResultHandler
    });
}
function submitFormP() {
    $('#ffp').form('submit', {
        url: "/User/AddRole",
        onSubmit: function () {
            return $(this).form('validate');
            //var accountname = $("#AccountName").val();
            //if (accountname == "") {
            //    $.messager.alert("系统提示", "账号不能为空", "warning");
            //    return false;
            //}
        },
        success: ajaxResultHandler
    });
}
function ajaxResultHandler(result) {
    var data = JSON.parse(result);
    if (data.Statu == "ok") {
        clearForm();
        $('#dlg').dialog('close');
        $('#dlgp').dialog('close');
        $("#grid-users").datagrid("reload");
    }
    if (data.Statu == "err") {
        $.messager.alert("系统提示", data.Msg, "error");
        $("#grid-users").datagrid("reload");
    } else {
        $.messager.alert("系统提示", data.Msg, "warning");
        $("#grid-users").datagrid("reload");
    }
}
function clearForm()
{
    $('#ff').form("clear");
    $('#ffp').form("clear");
}
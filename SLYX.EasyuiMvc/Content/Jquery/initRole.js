$(function () {

    var addNewRow = function () {
        clearForm();
        $('#dlg').dialog('open');
        $("#dlg-buttons a:first").attr("onclick", "submitForm(); return false;")
    };
    var beginEdit = function () {
        var row = $("#grid-roles").datagrid("getSelections");
        if (row.length == 0) {
            $.messager.alert("系统提示", "请先选中要修改的行。", "warning");
            return;
        }
        if (row.length > 1) {
            $.messager.alert("系统提示", "请选中一条要修改的行。", "warning");
            return;
        }
        $('#dlg').dialog('open');
        $("#hideId").val(row[0].Id);
        $("#RoleName").textbox("setValue", row[0].RoleName);
        $("#Description").textbox("setValue", row[0].Description);
        $("#IsAble").combobox("setValue", row[0].IsAble == true ? 1 : 0);
        $("#dlg-buttons a:first").attr("onclick", "submitForm(); return false;")
    };

    var deleteRows = function () {
        var selectRows = $("#grid-roles").datagrid("getSelections");
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
                $.post("/Role/DeleteList", { ids: ids }, function (data) {
                    if (data.Statu == "ok") {
                        $("#grid-roles").datagrid("reload").datagrid('clearSelections');
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

    var toolbarNavItems =
        [
            { text: "增加", iconCls: "icon-add", handler: addNewRow }, '-',
            { text: "编辑", iconCls: "icon-edit", handler: beginEdit }, '-',
            { text: "删除", iconCls: "icon-remove", handler: deleteRows }
        ];

    $("#grid-roles").datagrid({
        title: "角色列表",
        url: "/Role/RoleList",
        striped: true, rownumbers: true, pagination: true, pageSize: 20, fitColumns: true, fit: true,
        idField: 'Id',
        pageList: [20, 40, 60, 80, 100],
        rowStyler: function (index, row) {
            if (!row.IsAble) {
                return 'background-color:#696969;color:#fff;font-weight:bold;';
            }
        },
        columns: [[
            { field: 'ck', checkbox: true },
            { title: 'Id', field: 'Id', hidden: true },
		    { title: '角色名', field: 'RoleName', width: 70 },
		    { title: '是否启用', field: 'IsAble', width: 70 },
		    { title: '描述', field: 'Description', width: 70 },
		    { title: '创建人', field: 'CreateBy', width: 70 },
		    { title: '创建时间', field: 'CreateTime', width: 70, formatter: formatDatebox }
        ]],
        toolbar: toolbarNavItems
    });

});

function submitForm() {
    $('#ff').form('submit', {
        url: "/Role/Add",
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
        $("#grid-roles").datagrid("reload");
    }
    if (data.Statu == "error") {
        $.messager.alert("系统提示", data.Msg, "error");
        $("#grid-roles").datagrid("reload");
    } else {
        $.messager.alert("系统提示", data.Msg, "warning");
        $("#grid-roles").datagrid("reload");
    }
}
function clearForm() {
    $('#ff').form("clear");
}
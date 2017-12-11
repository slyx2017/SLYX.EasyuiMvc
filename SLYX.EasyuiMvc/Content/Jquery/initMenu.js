$(function () {
    $("#ParentId").combobox({
        label: '父菜单:',
        url: '/Menu/GetParentMenuList',
        valueField: 'Id',
        textField: 'Name'
    });
    var addNewRow = function () {
        clearForm();
        $('#dlg').dialog('open');
        $("#dlg-buttons a:first").attr("onclick", "submitForm(); return false;")
    };
    var beginEdit = function () {
        var row = $("#grid-menus").datagrid("getSelections");
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
        $("#MenuName").textbox("setValue", row[0].Name);
        $("#Icon").textbox("setValue", row[0].Icon);
        $("#Code").textbox("setValue", row[0].Code);
        $("#Sort").numberbox("setValue", row[0].Sort);
        $("#LinkAddress").textbox("setValue", row[0].LinkAddress);
        $("#ParentId").combobox("setValue", row[0].ParentId == -1 ? 0 : row[0].ParentId);
        $("#dlg-buttons a:first").attr("onclick", "submitForm(); return false;")
    };

    var deleteRows = function () {
        var selectRows = $("#grid-menus").datagrid("getSelections");
        if (selectRows.length == 0) {
            $.messager.alert("系统提示", "请先选中要删除的行。", "warning");
            return;
        }
        var ids = "";
        $.each(selectRows, function (index, value) {
            ids += selectRows[index].Id + ",";
        })
        ids = ids.substring(0, ids.length - 1);
        $.messager.confirm("系统提示", "是否要删除所有选中的行？此操作是不可恢复的。", function (rt) {
            if (rt) {
                $.post("/Menu/DeleteList", { ids: ids }, function (data) {
                    if (data.Statu == "ok") {
                        $("#grid-menus").datagrid("reload").datagrid('clearSelections');
                    }
                    if (data.Statu == "error") {
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

    $("#grid-menus").datagrid({
        title: "菜单列表",
        url: "/Menu/MenuList",
        striped: true, rownumbers: true, pagination: true, pageSize: 20, fitColumns: true, fit: true,
        idField: 'Id',
        pageList: [20, 40, 60, 80, 100],
        columns: [[
            { field: 'ck', checkbox: true },
            { title: 'Id', field: 'Id', align: 'left', width: 70, hidden: true },
          { title: '菜单名', field: 'Name', align: 'left', width: 70 },
          { title: '父节点', field: 'ParentId', align: 'left', width: 70 },
          { title: '编码', field: 'Code', align: 'left', width: 70 },
          { title: '路径', field: 'LinkAddress', align: 'left', width: 70 },
          { title: '图标', field: 'Icon', align: 'left', width: 70 },
          { title: '排序', field: 'Sort', align: 'left', width: 70 },
          { title: '创建时间', field: 'CreateTime', align: 'left', width: 70, formatter: formatFullDatebox },
          { title: '创建人', field: 'CreateBy', align: 'left', width: 70 }
        ]],
        toolbar: toolbarNavItems
    });

});

function submitForm() {
    $('#ff').form('submit', {
        url: "/Menu/Add",
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
        $("#grid-menus").datagrid("reload");
    }
    if (data.Statu == "error") {
        $.messager.alert("系统提示", data.Msg, "error");
        $("#grid-menus").datagrid("reload");
    } else {
        $.messager.alert("系统提示", data.Msg, "warning");
        $("#grid-menus").datagrid("reload");
    }
}
function clearForm() {
    $('#ff').form("clear");
}
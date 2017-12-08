$(function () {
    $("#grid-logs").datagrid({
        title: "日志列表",
        url: "/Log/LogList",
        striped: true, rownumbers: true, pagination: true, pageSize: 20, fitColumns: true, fit: true,singleSelect:true,
        idField: 'LogId',
        pageList: [20, 40, 60, 80, 100],
        columns: [[{ title: 'LogId', field: 'LogId', align: 'left', width: 70,hidden:true },
		{ title: 'CategoryId', field: 'CategoryId', align: 'left', width: 70, hidden: true },
		{ title: 'SourceObjectId', field: 'SourceObjectId', align: 'left', width: 70, hidden: true },
		{ title: 'SourceContentJson', field: 'SourceContentJson', align: 'left', width: 70, hidden: true },
		{ title: '操作时间', field: 'OperateTime', align: 'left', width: 70, formatter: formatFullDatebox },
		{ title: 'OperateUserId', field: 'OperateUserId', align: 'left', width: 70,hidden:true },
		{ title: '操作用户', field: 'OperateAccount', align: 'left', width: 70 },
		{ title: 'OperateTypeId', field: 'OperateTypeId', align: 'left', width: 70, hidden: true },
		{ title: '操作类型', field: 'OperateType', align: 'left', width: 70 },
		{ title: 'ModuleId', field: 'ModuleId', align: 'left', width: 70, hidden: true },
		{ title: '系统功能', field: 'Module', align: 'left', width: 70 },
		{ title: 'IP地址', field: 'IPAddress', align: 'left', width: 70 },
		{ title: 'IPAddressName', field: 'IPAddressName', align: 'left', width: 70, hidden: true },
		{ title: 'Host', field: 'Host', align: 'left', width: 70, hidden: true },
		{ title: 'Browser', field: 'Browser', align: 'left', width: 70, hidden: true },
		{
		    title: '执行结果', field: 'ExecuteResult',formatter: function (value) {
		        var msg = value == "1" ? "<span style='background:#5DB85D;color:#ffffff'>成功<span>" : "<span style='background:#F74744;color:#ffffff'>失败<span>";
		        return msg;
		    }
		},
		{ title: '执行结果描述', field: 'ExecuteResultJson', align: 'left', width: 70 },
		{ title: 'Description', field: 'Description', align: 'left', width: 70, hidden: true },
		{ title: 'DeleteMark', field: 'DeleteMark', align: 'left', width: 70, hidden: true },
		{ title: 'EnabledMark', field: 'EnabledMark', align: 'left', width: 70, hidden: true }
        ]]
    });
});
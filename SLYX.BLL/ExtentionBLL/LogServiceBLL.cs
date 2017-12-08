using SLYX.Common;
using SLYX.IBLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.BLL
{
    public class LogServiceBLL : BaseBLL<Model.Base_Log>, ILogServiceBLL
    {
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.Base_LogDAL;
        }

        /// <summary>
        /// 写日志
        /// </summary>
        /// <param name="logEntity">对象</param>
        public void WriteLog(Model.Base_Log logEntity)
        {
            logEntity.LogId = Guid.NewGuid().ToString();
            logEntity.OperateTime = DateTime.Now;
            logEntity.DeleteMark = 0;
            logEntity.EnabledMark = 1;
            logEntity.IPAddress = Net.Ip;
            logEntity.Host = Net.Host;
            logEntity.Browser = Net.Browser;
            CurrentRepository.AddEntity(logEntity);
        }
    }
}

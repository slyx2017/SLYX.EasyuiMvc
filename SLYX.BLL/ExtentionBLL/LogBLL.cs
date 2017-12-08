using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SLYX.IBLL;
using SLYX.Model;

namespace SLYX.BLL
{
    public static class LogBLL
    {
        private static IBLL.ILogServiceBLL service = new LogServiceBLL();
        public static void WriteLog(this Base_Log logEntity)
        {
            service.WriteLog(logEntity);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.Common
{
    public class LogHelper
    {
        public static void ErrorLog(string message,Exception e)
        {
            log4net.ILog log = log4net.LogManager.GetLogger("MsgLogger");
            log.Error(message,e);
        }
        public static void InfoLog(string message)
        {
            log4net.ILog log = log4net.LogManager.GetLogger("MsgLogger");
            log.Info(message);
        }
    }
}
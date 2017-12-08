using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.Common
{
   public class IPAddressHelper
    {
        /// <summary>  
        /// 服务器端获取客户端请求IP和客户端机器名称  
        /// </summary>  
        public static IpModel GetClientInfo()
        {
            string clientIp = "";
            IPAddress[] ipList = Dns.GetHostAddresses(Dns.GetHostName());
            clientIp = ipList[1].ToString();
            string clientName = Environment.MachineName;
            IpModel model = new IpModel() { ClientIp = clientIp, ClientName = clientName };
            return model;
        }
    }
}

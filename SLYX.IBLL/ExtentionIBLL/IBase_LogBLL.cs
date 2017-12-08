using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.IBLL
{
    public partial interface ILogServiceBLL
    {
        void WriteLog(Model.Base_Log logEntity);
    }
}

using SLYX.IDAL;
using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.DAL
{
    public class DBSessionFactory
    {
        //帮我们返回当前线程内的数据库上下文，如果当前线程内没有上下文，那么创建一个上下文，并保证
        //上下文实例在线程内部是唯一的
        public static IDBSession GetCurrentDbSession()
        {
            //CallContext：是线程内部唯一的独用的数据槽（一块内存空间）
            //传递DbSession 进去获取实例的信息，在这里进行强制转换。
            IDBSession _dbSession = CallContext.GetData("DbSession") as IDBSession;
            if (_dbSession == null)//线程在数据槽里面没有此上下文
            {
                _dbSession = new DBSession();//如果不存在上下文的话，创建一个EF上下文
                CallContext.SetData("DbContext", _dbSession);//我们在创建一个，放到数据槽中去
            }
            return _dbSession;
        }
    }
}

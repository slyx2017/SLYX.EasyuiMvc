﻿using SLYX.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.DAL
{
    public class EFContextFactory
    {
        //帮我们返回当前线程内的数据库上下文，如果当前线程内没有上下文，那么创建一个上下文，并保证
        //上下文实例在线程内部是唯一的
        public static DbContext GetCurrentDbContext()
        {
            //CallContext：是线程内部唯一的独用的数据槽（一块内存空间）
            //传递DbContext进去获取实例的信息，在这里进行强制转换。
            DbContext dbContext = CallContext.GetData("DbContext") as DbContext;
            if (dbContext==null)//线程在数据槽里面没有此上下文
            {
                dbContext = new ZxDBEntities();//如果不存在上下文的话，创建一个EF上下文
                CallContext.SetData("DbContext",dbContext);//我们在创建一个，放到数据槽中去
            }
            return dbContext;
        }
    }
}

using System;
using System.Linq;
using SLYX.IDAL;
using System.Linq.Expressions;
using SLYX.DAL;
using System.Reflection;
using System.Collections.Generic;

namespace SLYX.BLL
{
    public abstract class BaseBLL<T> where T : class, new()
    {
        public IBaseDAL<T> CurrentRepository;
        public IDBSession _dbSession = DBSessionFactory.GetCurrentDbSession();
        //基类的构造函数
        public BaseBLL()
        {
            SetCurrentRepository();
            //构造函数里面去调用了，此设置当前仓储的抽象方法
        }
        public abstract void SetCurrentRepository();
        //子类必须实现
        //实现对数据库的添加功能
        public int AddEntity(T entity)
        {
            //调用T对应的仓储来做添加工作
            int result=CurrentRepository.AddEntity(entity);
            return result;
        }
        //实现对数据的修改功能
        public bool UpdateEntity(T entity)
        {
            return CurrentRepository.UpdateEntity(entity);
        }
        //实现对数据库的删除功能
        public bool DeleteEntity(T entity)
        {
            return CurrentRepository.DeleteEntity(entity);
        }
        //实现对数据库的批量删除功能
        public bool RemoveRange(List<T> entities)
        {
            return CurrentRepository.RemoveRange(entities);
        }
        //实现对数据库的批量删除功能
        public bool RemoveRange(Expression<Func<T, bool>> whereLambda)
        {
            return CurrentRepository.RemoveRange(whereLambda);
        }
        /// <summary>  
        /// 查找带给定主键值的实体。 如果上下文中存在带给定主键值的实体，则立即返回该实体，而不会向存储区发送请求。 否则，会向存储区发送查找带给定主键值的实体的请求，如果找到该实体，则将其附加到上下文并返回。 如果未在上下文或存储区中找到实体，则返回 null。  
        /// </summary>  
        /// <param name="key"></param>  
        /// <returns></returns>  
        public T Find(object key)
        {
            return CurrentRepository.Find(key);
        }
        //实现对数据库的查询  --简单查询
        public IQueryable<T> LoadEntities(Expression<Func<T, bool>> whereLambda)
        {
            return CurrentRepository.LoadEntities(whereLambda);
        }
        /// <summary>
        /// 实现对数据的分页查询
        /// </summary>
        /// <typeparam name="S">按照某个类进行排序</typeparam>
        /// <param name="pageIndex">当前第几页</param>
        /// <param name="pageSize">一页显示多少条数据</param>
        /// <param name="total">总条数</param>
        /// <param name="whereLambda">取得排序的条件</param>
        /// <param name="isAsc">如何排序，根据倒叙还是升序</param>
        /// <param name="orderByLambda">根据那个字段进行排序</param>
        /// <returns></returns>
        public IQueryable<T> LoadPageEntities<S>(int pageIndex, int pageSize, out int total, Expression<Func<T, bool>> whereLambda,
                                                       bool isAsc, Expression<Func<T, S>> orderByLambda)
        {
            return CurrentRepository.LoadPageEntities(pageIndex, pageSize, out total, whereLambda, isAsc, orderByLambda);
        }
    }
}
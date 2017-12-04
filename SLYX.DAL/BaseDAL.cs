using System;
using System.Linq;
using System.Linq.Expressions;
using SLYX.Model;
using System.Data.Entity;
using System.Collections.Generic;

namespace SLYX.DAL
{
    public class BaseDAL<T> where T : class
    {
        //创建EF框架的上下文
        private DbContext db = EFContextFactory.GetCurrentDbContext();
        // 实现对数据库的添加功能,添加实现EF框架的引用
        public int AddEntity(T entity)
        {
            db.Set<T>().Add(entity);
            return db.SaveChanges();
        }
        //实现对数据库的修改功能
        public bool UpdateEntity(T entity)
        {
            db.Set<T>().Attach(entity);
            db.Entry(entity).State = EntityState.Modified;
            return db.SaveChanges() > 0;

            //if (db.Entry<T>(entity).State == EntityState.Modified)
            //{
            //    return db.SaveChanges() > 0;
            //}
            //else if (db.Entry<T>(entity).State == EntityState.Detached)
            //{
            //    try
            //    {
            //        db.Set<T>().Attach(entity);
            //        db.Entry<T>(entity).State = EntityState.Modified;
            //    }
            //    catch (InvalidOperationException)
            //    {
            //        //T old = Find(model._ID);
            //        //db.Entry<old>.CurrentValues.SetValues(model);
            //    }
            //    return db.SaveChanges() > 0;
            //}
            //return false;
        }
        //实现对数据库的删除功能
        public bool DeleteEntity(T entity)
        {
            db.Set<T>().Attach(entity);
            db.Entry<T>(entity).State = EntityState.Deleted;
            return db.SaveChanges() > 0;
        }
        /// <summary>  
        /// 从基础化集的上下文中删除给定实体集合（每个实体都置于“已删除”状态），这样当调用 SaveChanges 时，会从数据库中删除它。  
        /// </summary>  
        /// <param name="entities">合集</param>  
        /// <returns></returns> 
        public bool RemoveRange(List<T> entities)
        {
            db.Set<T>().RemoveRange(entities);
            return db.SaveChanges() > 0;
        }
        /// <summary>  
        /// 从基础化集的上下文中删除给定实体集合（每个实体都置于“已删除”状态），这样当调用 SaveChanges 时，会从数据库中删除它。  
        /// </summary>  
        /// <param name="entities">合集</param>  
        /// <returns></returns> 
        public bool RemoveRange(Expression<Func<T, bool>> deleteWhere)
        {
            List<T> entitys = db.Set<T>().AsQueryable().Where(deleteWhere).ToList();
            entitys.ForEach(m => db.Entry(m).State = EntityState.Deleted);
            return db.SaveChanges() > 0;
        }
        /// <summary>  
        /// 查找带给定主键值的实体。 如果上下文中存在带给定主键值的实体，则立即返回该实体，而不会向存储区发送请求。 否则，会向存储区发送查找带给定主键值的实体的请求，如果找到该实体，则将其附加到上下文并返回。 如果未在上下文或存储区中找到实体，则返回 null。  
        /// </summary>  
        /// <param name="key"></param>  
        /// <returns></returns>  
        public T Find(object key)
        {
            return db.Set<T>().Find(key);
        }
        //实现对数据库的查询  --简单查询
        public IQueryable<T> LoadEntities(Expression<Func<T, bool>> whereLambda)
        {
            return db.Set<T>().Where(whereLambda).AsQueryable();
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
        public IQueryable<T> LoadPageEntities<S>(int pageIndex, int pageSize, out int total, Expression<Func<T, bool>> whereLambda, bool isAsc, Expression<Func<T, S>> orderByLambda)
        {
            var temp = db.Set<T>().Where<T>(whereLambda);
            total = temp.Count();
            //得到总的条数
            //排序,获取当前页的数据
            if (isAsc)
            {
                temp = temp.OrderBy<T, S>(orderByLambda).Skip<T>(pageSize * (pageIndex - 1)) //越过多少条
                .Take<T>(pageSize).AsQueryable();
                //取出多少条
            }
            else
            {
                temp = temp.OrderByDescending<T, S>(orderByLambda).Skip<T>(pageSize * (pageIndex - 1)) //越过多少条
                .Take<T>(pageSize).AsQueryable();
                //取出多少条
            }
            return temp.AsQueryable();
        }
    }
}
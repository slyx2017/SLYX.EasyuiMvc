﻿using System;
using System.Linq;
using System.Linq.Expressions;
using SLYX.Model;
using System.Data.Entity;
namespace SLYX.DAL
{
    public class BaseDAL<T> where T : class
    {
        //创建EF框架的上下文
        private DbContext db = new ZxDBEntities();
        // 实现对数据库的添加功能,添加实现EF框架的引用
        public T AddEntity(T entity)
        {
            db.Entry<T>(entity).State = EntityState.Modified;
            //下面的写法统一
            db.SaveChanges();
            return entity;
        }
        //实现对数据库的修改功能
        public bool UpdateEntity(T entity)
        {
            db.Set<T>().Attach(entity);
            db.Entry<T>(entity).State = EntityState.Modified;
            return db.SaveChanges() > 0;
        }
        //实现对数据库的删除功能
        public bool DeleteEntity(T entity)
        {
            db.Set<T>().Attach(entity);
            db.Entry<T>(entity).State = EntityState.Deleted;
            return db.SaveChanges() > 0;
        }
        //实现对数据库的查询  --简单查询
        public IQueryable<T> LoadEntities(Expression<Func<T, bool>> whereLambda)
        {
            return db.Set<T>().Where<T>(whereLambda).AsQueryable();
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
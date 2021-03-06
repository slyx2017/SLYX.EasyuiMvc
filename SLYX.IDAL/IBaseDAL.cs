﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
namespace SLYX.IDAL
{
    /// <summary>
    /// 实现对数据库的操作(增删改查)的基类
    /// </summary>
    /// <typeparam name="T">定义泛型，约束其是一个类</typeparam>
    public interface IBaseDAL<T> where T : class, new()
    {
        // 实现对数据库的添加功能,添加实现EF框架的引用
        int AddEntity(T entity);
        //实现对数据库的修改功能
        bool UpdateEntity(T entity);
        //实现对数据库的删除功能
        bool DeleteEntity(T entity);
        bool RemoveRange(List<T> entities);
        bool RemoveRange(Expression<Func<T, bool>> deleteWhere);
        T Find(object key);
        //实现对数据库的查询  --简单查询
        IQueryable<T> LoadEntities(Expression<Func<T, bool>> whereLambda);
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
        IQueryable<T> LoadPageEntities<S>(int pageIndex, int pageSize, out int total, Expression<Func<T, bool>> whereLambda, bool isAsc, Expression<Func<T, S>> orderByLambda);
    }
}
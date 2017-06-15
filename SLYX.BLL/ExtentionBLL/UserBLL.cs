using SLYX.Common;
using System.Linq;
using System;
using System.Linq.Expressions;

namespace SLYX.BLL
{
    public partial class UserBLL:IBLL.IUserBLL
    {
        /// <summary>
        /// 登录验证 Login(string strName,string strPwd)
        /// </summary>
        /// <param name="UserName">用户名</param>
        /// <param name="Password">密码</param>
        /// <returns></returns>
        public Model.User Login(string UserName, string Password)
       {
            string upwd = CommonHelper.Md5Hash(Password);
            Model.User usr = LoadEntities(u => u.AccountName == UserName && u.Password==upwd).ToList().FirstOrDefault();
            if (usr != null)
            {
                return usr;
            }
            return null;
        }
    }
}

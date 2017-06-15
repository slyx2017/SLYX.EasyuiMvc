using SLYX.Model;

namespace SLYX.IBLL
{
    public partial interface IUserBLL
    {
        User Login(string UserName,string Password);
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class AccountServices
    {
        public static AccountController db = new AccountController();

        #region[Account_Insert]
        public void Account_Insert(AccountInfo data)
        {
            db.Account_Insert(data);
        }
        #endregion

        #region[Account_Update]
        public void Account_Update(AccountInfo data)
        {
            db.Account_Update(data);
        }
        #endregion

        #region[Account_Delete]
        public void Account_Delete(string Id)
        {
            db.Account_Delete(Id);
        }
        #endregion

        #region[Account_GetByAll]
        public DataTable Account_GetByAll()
        {
            return db.Account_GetByAll();
        }
        #endregion

        #region[Account_GetByUserName]
        public DataTable Account_GetByUserName(string UserName)
        {
            return db.Account_GetByUserName(UserName);
        }
        #endregion

        #region[Account_GetByGroupUsers_ID]
        public DataTable Account_GetByGroupUsers_ID(string GroupUsers_ID)
        {
            return db.Account_GetByGroupUsers_ID(GroupUsers_ID);
        }
        #endregion

        #region[Account_GetByTop]
        public DataTable Account_GetByTop(string Top, string Where, String Order)
        {
            return db.Account_GetByTop(Top, Where, Order);
        }
        #endregion

        #region[Account_CheckLogin]
        public int Account_CheckLogin(string UserName, string PassWord)
        {
            return db.Account_CheckLogin(UserName, PassWord);

        }
        #endregion

        #region[Account_ChangePassWord]
        public void Account_ChangePassWord(string UserName, string NewPassword)
        {
            db.Account_ChangePassWord(UserName, NewPassword);
        }
        #endregion


        #region[Account_GroupUsers]
        public DataTable Account_GroupUsers()
        {
            return db.Account_GroupUsers();
        }
        #endregion
    }
}
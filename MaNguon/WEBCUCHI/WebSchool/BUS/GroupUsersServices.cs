using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class GroupUsersServices
    {
        public static GroupUsersController db = new GroupUsersController();

        #region[GroupUsers_Insert]
        public void GroupUsers_Insert(GroupUsersInfo data)
        {
            db.GroupUsers_Insert(data);
        }
        #endregion

        #region[GroupUsers_Update]
        public void GroupUsers_Update(GroupUsersInfo data)
        {
            db.GroupUsers_Update(data);
        }
        #endregion

        #region[GroupUsers_Delete]
        public void GroupUsers_Delete(string Id)
        {
            db.GroupUsers_Delete(Id);
        }
        #endregion

        #region[GroupUsers_GetByAll]
        public DataSet GroupUsers_GetByAll()
        {
            return db.GroupUsers_GetByAll();
        }
        #endregion
    }
}
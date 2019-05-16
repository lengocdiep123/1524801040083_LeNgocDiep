using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class GroupUsersController : SqlDataProvider
    {
        #region[GroupUsers_Insert]
        public void GroupUsers_Insert(GroupUsersInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_GroupUsers_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Name", data.Name));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion
        #region[GroupUsers_Update]
        public void GroupUsers_Update(GroupUsersInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_GroupUsers_Update", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@Name", data.Name));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion
        #region[GroupUsers_Delete]
        public void GroupUsers_Delete(string Id)
        {
            using (SqlCommand cmd = new SqlCommand("sp_GroupUsers_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", Id));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[GroupUsers_GetByAll]
        public DataSet GroupUsers_GetByAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_GroupUsers_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet dt = new DataSet();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion
    }
}
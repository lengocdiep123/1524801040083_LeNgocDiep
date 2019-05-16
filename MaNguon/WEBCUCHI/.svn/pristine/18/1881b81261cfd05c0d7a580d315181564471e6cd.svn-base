using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class AccountController : SqlDataProvider
    {
        #region[Account_Insert]
        public void Account_Insert(AccountInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Username", data.Username));
                cmd.Parameters.Add(new SqlParameter("@Password", data.Password));
                cmd.Parameters.Add(new SqlParameter("@GroupUsers_ID", data.GroupUsers_ID));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion
        #region[Account_Update]
        public void Account_Update(AccountInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_Update", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Username", data.Username));
                cmd.Parameters.Add(new SqlParameter("@GroupUsers_ID", data.GroupUsers_ID));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion
        #region[Account_Delete]
        public void Account_Delete(string Id)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserName", Id));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion
        #region[Account_GetByAll]
        public DataTable Account_GetByAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[Account_GetByUserName]
        public DataTable Account_GetByUserName(string UserName)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_GetByUserName", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserName", UserName));
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[Account_GetByGroupUsers_ID]
        public DataTable Account_GetByGroupUsers_ID(string GroupUsers_ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_GetByGroupUsers_ID", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@GroupUsers_ID", GroupUsers_ID));
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[Account_GetByTop]
        public DataTable Account_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_GetByTop", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@Top", Top));
                cmd.Parameters.Add(new SqlParameter("@Where", Where));
                cmd.Parameters.Add(new SqlParameter("@Order", Order));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion
        #region[Account_CheckLogin]
        public int Account_CheckLogin(string UserName, string PassWord)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_CheckLogin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserName", UserName));
                cmd.Parameters.Add(new SqlParameter("@PassWord", PassWord));

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                    return int.Parse(dt.Rows[0]["GroupUsers_ID"].ToString());
                else
                    return -1;
            }
        }
        #endregion

        #region[Account_ChangePassWord]
        public void Account_ChangePassWord(string UserName, string NewPassword)
        {
            using (SqlCommand dbCmd = new SqlCommand("sp_Account_ChangePassWord", GetConnection()))
            {
                dbCmd.CommandType = CommandType.StoredProcedure;
                dbCmd.Parameters.Add(new SqlParameter("@UserName", UserName));
                dbCmd.Parameters.Add(new SqlParameter("@Password", NewPassword));
                dbCmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[Account_GroupUsers]
        public DataTable Account_GroupUsers()
        {
            using (SqlCommand cmd = new SqlCommand("sp_Account_GroupUsers", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion
    }
}

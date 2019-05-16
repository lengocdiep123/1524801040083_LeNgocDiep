using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class DaoTaoTinController : SqlDataProvider
    {
        #region[DaoTaoTintuc_Insert]
        public void DaoTaoTintuc_Insert(DaoTaoTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDChude", data.IDChude));
                cmd.Parameters.Add(new SqlParameter("@ngaydang", data.ngaydang));
                cmd.Parameters.Add(new SqlParameter("@ngaysua", data.ngaysua));
                cmd.Parameters.Add(new SqlParameter("@noidung", data.noidung));
                cmd.Parameters.Add(new SqlParameter("@tieude", data.tieude));
                cmd.Parameters.Add(new SqlParameter("@tomtat", data.tomtat));
                cmd.Parameters.Add(new SqlParameter("@anhdaidien", data.anhdaidien));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[DaoTaoTintuc_Update]
        public void DaoTaoTintuc_Update(DaoTaoTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_Update", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@IDChude", data.IDChude));
                cmd.Parameters.Add(new SqlParameter("@ngaydang", data.ngaydang));
                cmd.Parameters.Add(new SqlParameter("@ngaysua", data.ngaysua));
                cmd.Parameters.Add(new SqlParameter("@noidung", data.noidung));
                cmd.Parameters.Add(new SqlParameter("@tieude", data.tieude));
                cmd.Parameters.Add(new SqlParameter("@tomtat", data.tomtat));
                cmd.Parameters.Add(new SqlParameter("@anhdaidien", data.anhdaidien));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[DaoTaoTintuc_UpdateDangtin]
        public void DaoTaoTintuc_UpdateDangtin(DaoTaoTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_UpdateDangtin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[DaoTaoTintuc_Delete]
        public void DaoTaoTintuc_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[DaoTaoTintuc_GetbyAll]
        public DataTable DaoTaoTintuc_GetbyAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[DaoTaoTintuc_GetByChude]
        public DataTable DaoTaoTintuc_GetByChude(string IDChude)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_GetByChude", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDChude", IDChude));
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion
        #region[DaoTaoTintuc_GetByTop]
        public DataTable DaoTaoTintuc_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoTintuc_GetByTop", GetConnection()))
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
    }
}
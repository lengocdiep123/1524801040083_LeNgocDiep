using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class DaoTaoCTDTTinController : SqlDataProvider
    {
        #region[DaoTaoCTDTTintuc_Insert]
        public void DaoTaoCTDTTintuc_Insert(DaoTaoCTDTTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDChude", data.IDChude));
                cmd.Parameters.Add(new SqlParameter("@IDLoai", data.IDLoai));
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

        #region[DaoTaoCTDTTintuc_Update]
        public void DaoTaoCTDTTintuc_Update(DaoTaoCTDTTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_Update", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@IDChude", data.IDChude));
                cmd.Parameters.Add(new SqlParameter("@IDLoai", data.IDLoai));
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

        #region[DaoTaoCTDTTintuc_UpdateDangtin]
        public void DaoTaoCTDTTintuc_UpdateDangtin(DaoTaoCTDTTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_UpdateDangtin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[DaoTaoCTDTTintuc_Delete]
        public void DaoTaoCTDTTintuc_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[DaoTaoCTDTTintuc_GetbyAll]
        public DataTable DaoTaoCTDTTintuc_GetbyAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[DaoTaoCTDTTintuc_GetByChude]
        public DataTable DaoTaoCTDTTintuc_GetByChude(string IDChude)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_GetByChude", GetConnection()))
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
        #region[DaoTaoCTDTTintuc_GetByTop]
        public DataTable DaoTaoCTDTTintuc_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_DaoTaoCTDTTintuc_GetByTop", GetConnection()))
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
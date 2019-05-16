using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongGioiThieuTinController:SqlDataProvider
    {
        #region[TruongGioithieuTintuc_Insert]
        public void TruongGioithieuTintuc_Insert(TruongGioiThieuTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioithieuTintuc_Insert", GetConnection()))
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

        #region[TruongGioiThieuTintuc_Update]
        public void TruongGioiThieuTintuc_Update(TruongGioiThieuTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieuTintuc_Update", GetConnection()))
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

        #region[TruongGioiThieuTintuc_UpdateDangtin]
        public void TruongGioiThieuTintuc_UpdateDangtin(TruongGioiThieuTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieuTintuc_UpdateDangtin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongGioiThieuTintuc_Delete]
        public void TruongGioiThieuTintuc_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieuTintuc_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongGioiThieuTintuc_GetbyAll]
        public DataTable TruongGioiThieuTintuc_GetbyAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieuTintuc_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[TruongGioiThieuTintuc_GetByChude]
        public DataTable TruongGioiThieuTintuc_GetByChude(string IDChude)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieuTintuc_GetByChude", GetConnection()))
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
        #region[TruongGioiThieuTintuc_GetByTop]
        public DataTable TruongGioiThieuTintuc_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieuTintuc_GetByTop", GetConnection()))
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
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongThuVienTinController : SqlDataProvider
    {
        #region[TruongThuVienTintuc_Insert]
        public void TruongThuVienTintuc_Insert(TruongThuVienTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_Insert", GetConnection()))
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

        #region[TruongThuVienTintuc_Update]
        public void TruongThuVienTintuc_Update(TruongThuVienTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_Update", GetConnection()))
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

        #region[TruongThuVienTintuc_UpdateDangtin]
        public void TruongThuVienTintuc_UpdateDangtin(TruongThuVienTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_UpdateDangtin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongThuVienTintuc_Delete]
        public void TruongThuVienTintuc_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongThuVienTintuc_GetbyAll]
        public DataTable TruongThuVienTintuc_GetbyAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[TruongThuVienTintuc_GetByChude]
        public DataTable TruongThuVienTintuc_GetByChude(string IDChude)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_GetByChude", GetConnection()))
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
        #region[TruongThuVienTintuc_GetByTop]
        public DataTable TruongThuVienTintuc_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongThuVienTintuc_GetByTop", GetConnection()))
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
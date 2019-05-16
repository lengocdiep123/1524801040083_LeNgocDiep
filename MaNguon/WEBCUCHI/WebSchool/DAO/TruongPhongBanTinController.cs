using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongPhongBanTinController : SqlDataProvider
    {
        #region[TruongPhongBanTintuc_Insert]
        public void TruongPhongBanTintuc_Insert(TruongPhongBanTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_Insert", GetConnection()))
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

        #region[TruongPhongBanTintuc_Update]
        public void TruongPhongBanTintuc_Update(TruongPhongBanTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_Update", GetConnection()))
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

        #region[TruongPhongBanTintuc_UpdateDangtin]
        public void TruongPhongBanTintuc_UpdateDangtin(TruongPhongBanTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_UpdateDangtin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@dangtin", data.dangtin));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongPhongBanTintuc_Delete]
        public void TruongPhongBanTintuc_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongPhongBanTintuc_GetbyAll]
        public DataTable TruongPhongBanTintuc_GetbyAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion

        #region[TruongPhongBanTintuc_GetByChude]
        public DataTable TruongPhongBanTintuc_GetByChude(string IDChude)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_GetByChude", GetConnection()))
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
        #region[TruongPhongBanTintuc_GetByTop]
        public DataTable TruongPhongBanTintuc_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongPhongBanTintuc_GetByTop", GetConnection()))
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
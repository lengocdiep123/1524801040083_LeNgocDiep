using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TSDangKiTrucTuyenTinController : SqlDataProvider
    {
        #region[TSDangKiTrucTuyenTintuc_Insert]
        public void TSDangKiTrucTuyenTintuc_Insert(TSDangKiTrucTuyenTinInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSDangKiTrucTuyen_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@hoten", data.hoten));
                cmd.Parameters.Add(new SqlParameter("@ngaysinh", data.ngaysinh));
                cmd.Parameters.Add(new SqlParameter("@hokhau", data.hokhau));
                cmd.Parameters.Add(new SqlParameter("@dienthoai", data.dienthoai));
                cmd.Parameters.Add(new SqlParameter("@cmnd", data.cmnd));
                cmd.Parameters.Add(new SqlParameter("@email", data.email));
                cmd.Parameters.Add(new SqlParameter("@hotennhanthu", data.hotennhanthu));
                cmd.Parameters.Add(new SqlParameter("@diachinhanthu", data.diachinhanthu));
                cmd.Parameters.Add(new SqlParameter("@dienthoainhanthu", data.dienthoainhanthu));
                cmd.Parameters.Add(new SqlParameter("@datotnghiep", data.datotnghiep));
                cmd.Parameters.Add(new SqlParameter("@namtotnghiep", data.namtotnghiep));

                cmd.Parameters.Add(new SqlParameter("@nv1trinhdo", data.nv1trinhdo));
                cmd.Parameters.Add(new SqlParameter("@nv2trinhdo", data.nv2trinhdo));
                cmd.Parameters.Add(new SqlParameter("@nv3trinhdo", data.nv3trinhdo));
                cmd.Parameters.Add(new SqlParameter("@nv1Nganh", data.nv1Nganh));
                cmd.Parameters.Add(new SqlParameter("@nv2Nganh", data.nv2Nganh));
                cmd.Parameters.Add(new SqlParameter("@nv3Nganh", data.nv3Nganh));
                cmd.Parameters.Add(new SqlParameter("@ngaydangky", data.ngaydangky));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TSDangKiTrucTuyenTintuc_Delete]
        public void TSDangKiTrucTuyenTintuc_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSDangKiTrucTuyen_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TSDangKiTrucTuyenTintuc_GetbyAll]
        public DataTable TSDangKiTrucTuyenTintuc_GetbyAll()
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSDangKiTrucTuyen_GetByAll", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }
        #endregion


        #region[TSDangKiTrucTuyenTintuc_GetByTop]
        public DataTable TSDangKiTrucTuyenTintuc_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSDangKiTrucTuyen_GetByTop", GetConnection()))
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
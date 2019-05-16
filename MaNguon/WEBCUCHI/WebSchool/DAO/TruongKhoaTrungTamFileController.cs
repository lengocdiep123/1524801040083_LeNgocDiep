﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongKhoaTrungTamFileController : SqlDataProvider
    {
        #region[TruongKhoaTrungTamFile_Insert]
        public void TruongKhoaTrungTamFile_Insert(TruongKhoaTrungTamFileInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongKhoaTrungTamFile_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDTin", data.IDTin));
                cmd.Parameters.Add(new SqlParameter("@noidung", data.noidung));
                cmd.Parameters.Add(new SqlParameter("@duongdan", data.duongdan));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongKhoaTrungTamFile_Delete]
        public void TruongKhoaTrungTamFile_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongKhoaTrungTamFile_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongKhoaTrungTamFile_DeletebyIDTin]
        public void TruongKhoaTrungTamFile_DeletebyIDTin(string IDTin)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongKhoaTrungTamFile_DeleteByIDTin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDTin", IDTin));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongKhoaTrungTamFile_GetByTop]
        public DataTable TruongKhoaTrungTamFile_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongKhoaTrungTamFile_GetByTop", GetConnection()))
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
﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongNoiBoFileController : SqlDataProvider
    {
        #region[TruongNoiBoFile_Insert]
        public void TruongNoiBoFile_Insert(TruongNoiBoFileInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongNoiBoFile_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDTin", data.IDTin));
                cmd.Parameters.Add(new SqlParameter("@noidung", data.noidung));
                cmd.Parameters.Add(new SqlParameter("@duongdan", data.duongdan));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongNoiBoFile_Delete]
        public void TruongNoiBoFile_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongNoiBoFile_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongNoiBoFile_DeletebyIDTin]
        public void TruongNoiBoFile_DeletebyIDTin(string IDTin)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongNoiBoFile_DeleteByIDTin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDTin", IDTin));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TruongNoiBoFile_GetByTop]
        public DataTable TruongNoiBoFile_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongNoiBoFile_GetByTop", GetConnection()))
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
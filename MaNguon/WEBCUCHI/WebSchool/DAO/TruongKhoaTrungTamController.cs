﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongKhoaTrungTamController : SqlDataProvider
    {

        #region[TruongKhoaTrungTam_GetByTop]
        public DataTable TruongKhoaTrungTam_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongKhoaTrungTam_GetByTop", GetConnection()))
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
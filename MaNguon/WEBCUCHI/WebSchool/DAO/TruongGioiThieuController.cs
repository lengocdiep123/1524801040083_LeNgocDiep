﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TruongGioiThieuController : SqlDataProvider
    {

        #region[TruongGioiThieu_GetByTop]
        public DataTable TruongGioiThieu_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TruongGioiThieu_GetByTop", GetConnection()))
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
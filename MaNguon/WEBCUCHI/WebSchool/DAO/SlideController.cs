using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class SlideController : SqlDataProvider
    {
        #region[Slide_Update]
        public void Slide_Update(SlideInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Slide_Update", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", data.ID));
                cmd.Parameters.Add(new SqlParameter("@IsSlide", data.IsSlide));
              
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[Slide_GetByTop]
        public DataTable Slide_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_Slide_GetByTop", GetConnection()))
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
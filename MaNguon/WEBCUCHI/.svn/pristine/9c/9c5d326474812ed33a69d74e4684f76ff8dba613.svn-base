using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TSNguyenVongController : SqlDataProvider
    {

        #region[TSNguyenVong_Insert]
        public void TSNguyenVongTintuc_Insert(TSNguyenVongInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSNguyenVong_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDDangki", data.IDDangki));
                cmd.Parameters.Add(new SqlParameter("@IDTrinhdo", data.IDTrinhdo));
                cmd.Parameters.Add(new SqlParameter("@IDNguyenvong", data.IDNguyenvong));
                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TSNguyenVong_GetByTop]
        public DataTable TSNguyenVong_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSNguyenVong_GetByTop", GetConnection()))
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
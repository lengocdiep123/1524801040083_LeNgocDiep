using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebSchool.DAO
{
    public class TSHoSoFileController : SqlDataProvider
    {
        #region[TSHoSoFile_Insert]
        public void TSHoSoFile_Insert(TSHoSoFileInfo data)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSHoSoFile_Insert", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDTin", data.IDTin));
                cmd.Parameters.Add(new SqlParameter("@noidung", data.noidung));
                cmd.Parameters.Add(new SqlParameter("@duongdan", data.duongdan));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TSHoSoFile_Delete]
        public void TSHoSoFile_Delete(string ID)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSHoSoFile_Delete", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@ID", ID));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TSHoSoFile_DeletebyIDTin]
        public void TSHoSoFile_DeletebyIDTin(string IDTin)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSHoSoFile_DeleteByIDTin", GetConnection()))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@IDTin", IDTin));

                cmd.ExecuteNonQuery();
            }
        }
        #endregion

        #region[TSHoSoFile_GetByTop]
        public DataTable TSHoSoFile_GetByTop(string Top, string Where, string Order)
        {
            using (SqlCommand cmd = new SqlCommand("sp_TSHoSoFile_GetByTop", GetConnection()))
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
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSHoSoFileServices
    {
        public static TSHoSoFileController db = new TSHoSoFileController();

        #region[TSHoSoFile_Insert]
        public void TSHoSoFile_Insert(TSHoSoFileInfo data)
        {
            db.TSHoSoFile_Insert(data);
        }
        #endregion

        #region[TSHoSoFile_Delete]
        public void TSHoSoFile_Delete(string ID)
        {
            db.TSHoSoFile_Delete(ID);
        }
        #endregion

        #region[TSHoSoFile_DeletebyIDTin]
        public void TSHoSoFile_DeletebyIDTin(string IDTin)
        {
            db.TSHoSoFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TSHoSoFile_GetByTop]
        public DataTable TSHoSoFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TSHoSoFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSKetQuaFileServices
    {
        public static TSKetQuaFileController db = new TSKetQuaFileController();

        #region[TSKetQuaFile_Insert]
        public void TSKetQuaFile_Insert(TSKetQuaFileInfo data)
        {
            db.TSKetQuaFile_Insert(data);
        }
        #endregion

        #region[TSKetQuaFile_Delete]
        public void TSKetQuaFile_Delete(string ID)
        {
            db.TSKetQuaFile_Delete(ID);
        }
        #endregion

        #region[TSKetQuaFile_DeletebyIDTin]
        public void TSKetQuaFile_DeletebyIDTin(string IDTin)
        {
            db.TSKetQuaFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TSKetQuaFile_GetByTop]
        public DataTable TSKetQuaFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TSKetQuaFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
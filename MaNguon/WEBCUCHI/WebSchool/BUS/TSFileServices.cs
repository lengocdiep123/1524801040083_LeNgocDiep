using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSFileServices
    {
        public static TSFileController db = new TSFileController();

        #region[TSFile_Insert]
        public void TSFile_Insert(TSFileInfo data)
        {
            db.TSFile_Insert(data);
        }
        #endregion

        #region[TSFile_Delete]
        public void TSFile_Delete(string ID)
        {
            db.TSFile_Delete(ID);
        }
        #endregion

        #region[TSFile_DeletebyIDTin]
        public void TSFile_DeletebyIDTin(string IDTin)
        {
            db.TSFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TSFile_GetByTop]
        public DataTable TSFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TSFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
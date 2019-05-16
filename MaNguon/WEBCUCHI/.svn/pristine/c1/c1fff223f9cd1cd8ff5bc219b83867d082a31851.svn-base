using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongNoiBoFileServices
    {
        public static TruongNoiBoFileController db = new TruongNoiBoFileController();

        #region[TruongNoiBoFile_Insert]
        public void TruongNoiBoFile_Insert(TruongNoiBoFileInfo data)
        {
            db.TruongNoiBoFile_Insert(data);
        }
        #endregion

        #region[TruongNoiBoFile_Delete]
        public void TruongNoiBoFile_Delete(string ID)
        {
            db.TruongNoiBoFile_Delete(ID);
        }
        #endregion

        #region[TruongNoiBoFile_DeletebyIDTin]
        public void TruongNoiBoFile_DeletebyIDTin(string IDTin)
        {
            db.TruongNoiBoFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongNoiBoFile_GetByTop]
        public DataTable TruongNoiBoFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongNoiBoFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
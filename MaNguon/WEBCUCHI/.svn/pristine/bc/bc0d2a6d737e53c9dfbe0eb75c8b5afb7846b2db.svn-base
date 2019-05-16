using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongDoanTheFileServices
    {
        public static TruongDoanTheFileController db = new TruongDoanTheFileController();

        #region[TruongDoanTheFile_Insert]
        public void TruongDoanTheFile_Insert(TruongDoanTheFileInfo data)
        {
            db.TruongDoanTheFile_Insert(data);
        }
        #endregion

        #region[TruongDoanTheFile_Delete]
        public void TruongDoanTheFile_Delete(string ID)
        {
            db.TruongDoanTheFile_Delete(ID);
        }
        #endregion

        #region[TruongDoanTheFile_DeletebyIDTin]
        public void TruongDoanTheFile_DeletebyIDTin(string IDTin)
        {
            db.TruongDoanTheFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongDoanTheFile_GetByTop]
        public DataTable TruongDoanTheFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongDoanTheFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
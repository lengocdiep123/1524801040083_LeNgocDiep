using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongSinhVienFileServices
    {
        public static TruongSinhVienFileController db = new TruongSinhVienFileController();

        #region[TruongSinhVienFile_Insert]
        public void TruongSinhVienFile_Insert(TruongSinhVienFileInfo data)
        {
            db.TruongSinhVienFile_Insert(data);
        }
        #endregion

        #region[TruongSinhVienFile_Delete]
        public void TruongSinhVienFile_Delete(string ID)
        {
            db.TruongSinhVienFile_Delete(ID);
        }
        #endregion

        #region[TruongSinhVienFile_DeletebyIDTin]
        public void TruongSinhVienFile_DeletebyIDTin(string IDTin)
        {
            db.TruongSinhVienFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongSinhVienFile_GetByTop]
        public DataTable TruongSinhVienFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongSinhVienFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
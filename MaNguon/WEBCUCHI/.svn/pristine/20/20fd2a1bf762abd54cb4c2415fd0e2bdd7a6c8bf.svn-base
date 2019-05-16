using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongThuVienFileServices
    {
        public static TruongThuVienFileController db = new TruongThuVienFileController();

        #region[TruongThuVienFile_Insert]
        public void TruongThuVienFile_Insert(TruongThuVienFileInfo data)
        {
            db.TruongThuVienFile_Insert(data);
        }
        #endregion

        #region[TruongThuVienFile_Delete]
        public void TruongThuVienFile_Delete(string ID)
        {
            db.TruongThuVienFile_Delete(ID);
        }
        #endregion

        #region[TruongThuVienFile_DeletebyIDTin]
        public void TruongThuVienFile_DeletebyIDTin(string IDTin)
        {
            db.TruongThuVienFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongThuVienFile_GetByTop]
        public DataTable TruongThuVienFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongThuVienFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
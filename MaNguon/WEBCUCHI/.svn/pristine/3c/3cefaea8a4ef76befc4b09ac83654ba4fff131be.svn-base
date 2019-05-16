using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongTaiNguyenFileServices
    {
        public static TruongTaiNguyenFileController db = new TruongTaiNguyenFileController();

        #region[TruongTaiNguyenFile_Insert]
        public void TruongTaiNguyenFile_Insert(TruongTaiNguyenFileInfo data)
        {
            db.TruongTaiNguyenFile_Insert(data);
        }
        #endregion

        #region[TruongTaiNguyenFile_Delete]
        public void TruongTaiNguyenFile_Delete(string ID)
        {
            db.TruongTaiNguyenFile_Delete(ID);
        }
        #endregion

        #region[TruongTaiNguyenFile_DeletebyIDTin]
        public void TruongTaiNguyenFile_DeletebyIDTin(string IDTin)
        {
            db.TruongTaiNguyenFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongTaiNguyenFile_GetByTop]
        public DataTable TruongTaiNguyenFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongTaiNguyenFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
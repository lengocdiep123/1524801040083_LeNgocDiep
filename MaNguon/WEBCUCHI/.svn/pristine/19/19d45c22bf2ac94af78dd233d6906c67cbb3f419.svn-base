using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongKhoaTrungTamFileServices
    {
        public static TruongKhoaTrungTamFileController db = new TruongKhoaTrungTamFileController();

        #region[TruongKhoaTrungTamFile_Insert]
        public void TruongKhoaTrungTamFile_Insert(TruongKhoaTrungTamFileInfo data)
        {
            db.TruongKhoaTrungTamFile_Insert(data);
        }
        #endregion

        #region[TruongKhoaTrungTamFile_Delete]
        public void TruongKhoaTrungTamFile_Delete(string ID)
        {
            db.TruongKhoaTrungTamFile_Delete(ID);
        }
        #endregion

        #region[TruongKhoaTrungTamFile_DeletebyIDTin]
        public void TruongKhoaTrungTamFile_DeletebyIDTin(string IDTin)
        {
            db.TruongKhoaTrungTamFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongKhoaTrungTamFile_GetByTop]
        public DataTable TruongKhoaTrungTamFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongKhoaTrungTamFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
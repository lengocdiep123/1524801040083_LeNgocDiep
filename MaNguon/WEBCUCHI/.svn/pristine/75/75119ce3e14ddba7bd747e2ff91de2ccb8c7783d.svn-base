using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongPhongBanFileServices
    {
        public static TruongPhongBanFileController db = new TruongPhongBanFileController();

        #region[TruongPhongBanFile_Insert]
        public void TruongPhongBanFile_Insert(TruongPhongBanFileInfo data)
        {
            db.TruongPhongBanFile_Insert(data);
        }
        #endregion

        #region[TruongPhongBanFile_Delete]
        public void TruongPhongBanFile_Delete(string ID)
        {
            db.TruongPhongBanFile_Delete(ID);
        }
        #endregion

        #region[TruongPhongBanFile_DeletebyIDTin]
        public void TruongPhongBanFile_DeletebyIDTin(string IDTin)
        {
            db.TruongPhongBanFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongPhongBanFile_GetByTop]
        public DataTable TruongPhongBanFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongPhongBanFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
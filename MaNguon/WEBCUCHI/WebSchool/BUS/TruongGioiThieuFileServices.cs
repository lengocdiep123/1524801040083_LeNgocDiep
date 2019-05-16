using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongGioiThieuFileServices
    {
        public static TruongGioiThieuFileController db = new TruongGioiThieuFileController();

        #region[TruongGioithieuFile_Insert]
        public void TruongGioithieuFile_Insert(TruongGioiThieuFileInfo data)
        {
            db.TruongGioithieuFile_Insert(data);
        }
        #endregion

        #region[TruongGioithieuFile_Delete]
        public void TruongGioithieuFile_Delete(string ID)
        {
            db.TruongGioiThieuFile_Delete(ID);
        }
        #endregion

        #region[TruongGioithieuFile_DeletebyIDTin]
        public void TruongGioithieuFile_DeletebyIDTin(string IDTin)
        {
            db.TruongGioiThieuFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[TruongGioiThieuFile_GetByTop]
        public DataTable TruongGioiThieuFile_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongGioiThieuFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
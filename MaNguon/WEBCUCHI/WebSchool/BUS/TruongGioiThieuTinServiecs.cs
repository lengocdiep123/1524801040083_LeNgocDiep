using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongGioiThieuTinServiecs
    {
        public static TruongGioiThieuTinController db = new TruongGioiThieuTinController();

        #region[TruongGioithieuTintuc_Insert]
        public void TruongGioithieuTintuc_Insert(TruongGioiThieuTinInfo data)
        {
            db.TruongGioithieuTintuc_Insert(data);
        }
        #endregion

        #region[TruongGioiThieuTintuc_Update]
        public void TruongGioiThieuTintuc_Update(TruongGioiThieuTinInfo data)
        {
            db.TruongGioiThieuTintuc_Update(data);
        }
        #endregion

        #region[TruongGioiThieuTintuc_UpdateDangtin]
        public void TruongGioiThieuTintuc_UpdateDangtin(TruongGioiThieuTinInfo data)
        {
            db.TruongGioiThieuTintuc_Update(data);
        }
        #endregion

        #region[TruongGioiThieuTintuc_Delete]
        public void TruongGioiThieuTintuc_Delete(string ID)
        {
            db.TruongGioiThieuTintuc_Delete(ID);
        }
        #endregion

        #region[TruongGioiThieuTintuc_GetbyAll]
        public DataTable TruongGioiThieuTintuc_GetbyAll()
        {
            return db.TruongGioiThieuTintuc_GetbyAll();
        }
        #endregion

        #region[TruongGioiThieuTintuc_GetByChude]
        public DataTable TruongGioiThieuTintuc_GetByChude(string IDChude)
        {
            return db.TruongGioiThieuTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[TruongGioiThieuTintuc_GetByTop]
        public DataTable TruongGioiThieuTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongGioiThieuTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
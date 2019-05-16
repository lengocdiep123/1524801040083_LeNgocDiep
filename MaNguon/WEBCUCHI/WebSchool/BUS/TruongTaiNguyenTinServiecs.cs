using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongTaiNguyenTinServiecs
    {
        public static TruongTaiNguyenTinController db = new TruongTaiNguyenTinController();

        #region[TruongTaiNguyenTintuc_Insert]
        public void TruongTaiNguyenTintuc_Insert(TruongTaiNguyenTinInfo data)
        {
            db.TruongTaiNguyenTintuc_Insert(data);
        }
        #endregion

        #region[TruongTaiNguyenTintuc_Update]
        public void TruongTaiNguyenTintuc_Update(TruongTaiNguyenTinInfo data)
        {
            db.TruongTaiNguyenTintuc_Update(data);
        }
        #endregion

        #region[TruongTaiNguyenTintuc_UpdateDangtin]
        public void TruongTaiNguyenTintuc_UpdateDangtin(TruongTaiNguyenTinInfo data)
        {
            db.TruongTaiNguyenTintuc_Update(data);
        }
        #endregion

        #region[TruongTaiNguyenTintuc_Delete]
        public void TruongTaiNguyenTintuc_Delete(string ID)
        {
            db.TruongTaiNguyenTintuc_Delete(ID);
        }
        #endregion

        #region[TruongTaiNguyenTintuc_GetbyAll]
        public DataTable TruongTaiNguyenTintuc_GetbyAll()
        {
            return db.TruongTaiNguyenTintuc_GetbyAll();
        }
        #endregion

        #region[TruongTaiNguyenTintuc_GetByChude]
        public DataTable TruongTaiNguyenTintuc_GetByChude(string IDChude)
        {
            return db.TruongTaiNguyenTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[TruongTaiNguyenTintuc_GetByTop]
        public DataTable TruongTaiNguyenTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongTaiNguyenTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
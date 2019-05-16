using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongSinhVienTinServiecs
    {
        public static TruongSinhVienTinController db = new TruongSinhVienTinController();

        #region[TruongSinhVienTintuc_Insert]
        public void TruongSinhVienTintuc_Insert(TruongSinhVienTinInfo data)
        {
            db.TruongSinhVienTintuc_Insert(data);
        }
        #endregion

        #region[TruongSinhVienTintuc_Update]
        public void TruongSinhVienTintuc_Update(TruongSinhVienTinInfo data)
        {
            db.TruongSinhVienTintuc_Update(data);
        }
        #endregion

        #region[TruongSinhVienTintuc_UpdateDangtin]
        public void TruongSinhVienTintuc_UpdateDangtin(TruongSinhVienTinInfo data)
        {
            db.TruongSinhVienTintuc_Update(data);
        }
        #endregion

        #region[TruongSinhVienTintuc_Delete]
        public void TruongSinhVienTintuc_Delete(string ID)
        {
            db.TruongSinhVienTintuc_Delete(ID);
        }
        #endregion

        #region[TruongSinhVienTintuc_GetbyAll]
        public DataTable TruongSinhVienTintuc_GetbyAll()
        {
            return db.TruongSinhVienTintuc_GetbyAll();
        }
        #endregion

        #region[TruongSinhVienTintuc_GetByChude]
        public DataTable TruongSinhVienTintuc_GetByChude(string IDChude)
        {
            return db.TruongSinhVienTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[TruongSinhVienTintuc_GetByTop]
        public DataTable TruongSinhVienTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongSinhVienTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
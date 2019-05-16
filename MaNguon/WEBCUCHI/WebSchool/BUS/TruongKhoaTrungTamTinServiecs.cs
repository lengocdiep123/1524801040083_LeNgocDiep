using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongKhoaTrungTamTinServiecs
    {
        public static TruongKhoaTrungTamTinController db = new TruongKhoaTrungTamTinController();

        #region[TruongKhoaTrungTamTintuc_Insert]
        public void TruongKhoaTrungTamTintuc_Insert(TruongKhoaTrungTamTinInfo data)
        {
            db.TruongKhoaTrungTamTintuc_Insert(data);
        }
        #endregion

        #region[TruongKhoaTrungTamTintuc_Update]
        public void TruongKhoaTrungTamTintuc_Update(TruongKhoaTrungTamTinInfo data)
        {
            db.TruongKhoaTrungTamTintuc_Update(data);
        }
        #endregion

        #region[TruongKhoaTrungTamTintuc_UpdateDangtin]
        public void TruongKhoaTrungTamTintuc_UpdateDangtin(TruongKhoaTrungTamTinInfo data)
        {
            db.TruongKhoaTrungTamTintuc_Update(data);
        }
        #endregion

        #region[TruongKhoaTrungTamTintuc_Delete]
        public void TruongKhoaTrungTamTintuc_Delete(string ID)
        {
            db.TruongKhoaTrungTamTintuc_Delete(ID);
        }
        #endregion

        #region[TruongKhoaTrungTamTintuc_GetbyAll]
        public DataTable TruongKhoaTrungTamTintuc_GetbyAll()
        {
            return db.TruongKhoaTrungTamTintuc_GetbyAll();
        }
        #endregion

        #region[TruongKhoaTrungTamTintuc_GetByChude]
        public DataTable TruongKhoaTrungTamTintuc_GetByChude(string IDChude)
        {
            return db.TruongKhoaTrungTamTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[TruongKhoaTrungTamTintuc_GetByTop]
        public DataTable TruongKhoaTrungTamTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongKhoaTrungTamTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
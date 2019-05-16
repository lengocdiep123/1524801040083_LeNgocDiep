using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSDangKiTrucTuyenTinServiecs
    {
        public static TSDangKiTrucTuyenTinController db = new TSDangKiTrucTuyenTinController();

        #region[TSDangKiTrucTuyenTintuc_Insert]
        public void TSDangKiTrucTuyenTintuc_Insert(TSDangKiTrucTuyenTinInfo data)
        {
            db.TSDangKiTrucTuyenTintuc_Insert(data);
        }
        #endregion

        #region[TSDangKiTrucTuyenTintuc_Delete]
        public void TSDangKiTrucTuyenTintuc_Delete(string ID)
        {
            db.TSDangKiTrucTuyenTintuc_Delete(ID);
        }
        #endregion

        #region[TSDangKiTrucTuyenTintuc_GetbyAll]
        public DataTable TSDangKiTrucTuyenTintuc_GetbyAll()
        {
            return db.TSDangKiTrucTuyenTintuc_GetbyAll();
        }
        #endregion

        #region[TSDangKiTrucTuyenTintuc_GetByTop]
        public DataTable TSDangKiTrucTuyenTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TSDangKiTrucTuyenTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
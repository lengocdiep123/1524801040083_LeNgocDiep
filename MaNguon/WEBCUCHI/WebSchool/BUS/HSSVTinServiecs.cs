using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class HSSVTinServiecs
    {
        public static HSSVTinController db = new HSSVTinController();

        #region[HSSVTintuc_Insert]
        public void HSSVTintuc_Insert(HSSVTinInfo data)
        {
            db.HSSVTintuc_Insert(data);
        }
        #endregion

        #region[HSSVTintuc_Update]
        public void HSSVTintuc_Update(HSSVTinInfo data)
        {
            db.HSSVTintuc_Update(data);
        }
        #endregion

        #region[HSSVTintuc_UpdateDangtin]
        public void HSSVTintuc_UpdateDangtin(HSSVTinInfo data)
        {
            db.HSSVTintuc_Update(data);
        }
        #endregion

        #region[HSSVTintuc_Delete]
        public void HSSVTintuc_Delete(string ID)
        {
            db.HSSVTintuc_Delete(ID);
        }
        #endregion

        #region[HSSVTintuc_GetbyAll]
        public DataTable HSSVTintuc_GetbyAll()
        {
            return db.HSSVTintuc_GetbyAll();
        }
        #endregion

        #region[HSSVTintuc_GetByChude]
        public DataTable HSSVTintuc_GetByChude(string IDChude)
        {
            return db.HSSVTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[HSSVTintuc_GetByTop]
        public DataTable HSSVTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.HSSVTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
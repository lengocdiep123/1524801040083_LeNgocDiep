using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSHoSoTinServiecs
    {
        public static TSHoSoTinController db = new TSHoSoTinController();

        #region[TSHoSoTintuc_Insert]
        public void TSHoSoTintuc_Insert(TSHoSoTinInfo data)
        {
            db.TSHoSoTintuc_Insert(data);
        }
        #endregion

        #region[TSHoSoTintuc_Update]
        public void TSHoSoTintuc_Update(TSHoSoTinInfo data)
        {
            db.TSHoSoTintuc_Update(data);
        }
        #endregion

        #region[TSHoSoTintuc_UpdateDangtin]
        public void TSHoSoTintuc_UpdateDangtin(TSHoSoTinInfo data)
        {
            db.TSHoSoTintuc_Update(data);
        }
        #endregion

        #region[TSHoSoTintuc_Delete]
        public void TSHoSoTintuc_Delete(string ID)
        {
            db.TSHoSoTintuc_Delete(ID);
        }
        #endregion

        #region[TSHoSoTintuc_GetbyAll]
        public DataTable TSHoSoTintuc_GetbyAll()
        {
            return db.TSHoSoTintuc_GetbyAll();
        }
        #endregion

        #region[TSHoSoTintuc_GetByChude]
        public DataTable TSHoSoTintuc_GetByChude(string IDChude)
        {
            return db.TSHoSoTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[TSHoSoTintuc_GetByTop]
        public DataTable TSHoSoTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TSHoSoTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
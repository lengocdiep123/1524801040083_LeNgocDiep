using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class DaoTaoTinServiecs
    {
        public static DaoTaoTinController db = new DaoTaoTinController();

        #region[DaoTaoTintuc_Insert]
        public void DaoTaoTintuc_Insert(DaoTaoTinInfo data)
        {
            db.DaoTaoTintuc_Insert(data);
        }
        #endregion

        #region[DaoTaoTintuc_Update]
        public void DaoTaoTintuc_Update(DaoTaoTinInfo data)
        {
            db.DaoTaoTintuc_Update(data);
        }
        #endregion

        #region[DaoTaoTintuc_UpdateDangtin]
        public void DaoTaoTintuc_UpdateDangtin(DaoTaoTinInfo data)
        {
            db.DaoTaoTintuc_Update(data);
        }
        #endregion

        #region[DaoTaoTintuc_Delete]
        public void DaoTaoTintuc_Delete(string ID)
        {
            db.DaoTaoTintuc_Delete(ID);
        }
        #endregion

        #region[DaoTaoTintuc_GetbyAll]
        public DataTable DaoTaoTintuc_GetbyAll()
        {
            return db.DaoTaoTintuc_GetbyAll();
        }
        #endregion

        #region[DaoTaoTintuc_GetByChude]
        public DataTable DaoTaoTintuc_GetByChude(string IDChude)
        {
            return db.DaoTaoTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[DaoTaoTintuc_GetByTop]
        public DataTable DaoTaoTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.DaoTaoTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
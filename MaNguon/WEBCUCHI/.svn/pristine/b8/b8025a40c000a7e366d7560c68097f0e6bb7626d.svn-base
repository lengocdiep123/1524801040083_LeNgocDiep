using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSTinServiecs
    {
        public static TSTinController db = new TSTinController();

        #region[TSTintuc_Insert]
        public void TSTintuc_Insert(TSTinInfo data)
        {
            db.TSTintuc_Insert(data);
        }
        #endregion

        #region[TSTintuc_Update]
        public void TSTintuc_Update(TSTinInfo data)
        {
            db.TSTintuc_Update(data);
        }
        #endregion

        #region[TSTintuc_UpdateDangtin]
        public void TSTintuc_UpdateDangtin(TSTinInfo data)
        {
            db.TSTintuc_Update(data);
        }
        #endregion

        #region[TSTintuc_Delete]
        public void TSTintuc_Delete(string ID)
        {
            db.TSTintuc_Delete(ID);
        }
        #endregion

        #region[TSTintuc_GetbyAll]
        public DataTable TSTintuc_GetbyAll()
        {
            return db.TSTintuc_GetbyAll();
        }
        #endregion

        #region[TSTintuc_GetByChude]
        public DataTable TSTintuc_GetByChude(string IDChude)
        {
            return db.TSTintuc_GetByChude(IDChude);
        }
        #endregion
        #region[TSTintuc_GetByTop]
        public DataTable TSTintuc_GetByTop(string Top, string Where, String Order)
        {
            return db.TSTintuc_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
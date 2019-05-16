using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongGioiThieuServiecs
    {
        public static TruongGioiThieuController db = new TruongGioiThieuController();

        #region[TruongGioiThieu_GetByTop]
        public DataTable TruongGioiThieu_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongGioiThieu_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
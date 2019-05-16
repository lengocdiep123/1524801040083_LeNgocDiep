using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongPhongBanServiecs
    {
        public static TruongPhongBanController db = new TruongPhongBanController();

        #region[TruongPhongBan_GetByTop]
        public DataTable TruongPhongBan_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongPhongBan_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
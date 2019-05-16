using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TruongDoanTheServiecs
    {
        public static TruongDoanTheController db = new TruongDoanTheController();

        #region[TruongDoanThe_GetByTop]
        public DataTable TruongDoanThe_GetByTop(string Top, string Where, String Order)
        {
            return db.TruongDoanThe_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
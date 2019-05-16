using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSNVTrungCapServiecs
    {
        public static TSNVTrungCapController db = new TSNVTrungCapController();

        #region[TSNVTrungCap_GetByTop]
        public DataTable TSNVTrungCap_GetByTop(string Top, string Where, String Order)
        {
            return db.TSNVTrungCap_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
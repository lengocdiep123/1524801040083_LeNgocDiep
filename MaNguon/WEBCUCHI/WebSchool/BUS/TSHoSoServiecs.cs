using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSHoSoServiecs
    {
        public static TSHoSoController db = new TSHoSoController();

        #region[TSHoSo_GetByTop]
        public DataTable TSHoSo_GetByTop(string Top, string Where, String Order)
        {
            return db.TSHoSo_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
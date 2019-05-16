using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class DaoTaoServiecs
    {
        public static DaoTaoController db = new DaoTaoController();

        #region[DaoTao_GetByTop]
        public DataTable DaoTao_GetByTop(string Top, string Where, String Order)
        {
            return db.DaoTao_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
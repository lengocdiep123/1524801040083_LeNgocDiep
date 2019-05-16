using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class TSNguyenVongServiecs
    {
        public static TSNguyenVongController db = new TSNguyenVongController();

        #region[TSNguyenVong_Insert]
        public void TSNguyenVongTintuc_Insert(TSNguyenVongInfo data)
        {
            db.TSNguyenVongTintuc_Insert(data);
        }
        #endregion

        #region[TSNguyenVong_GetByTop]
        public DataTable TSNguyenVong_GetByTop(string Top, string Where, String Order)
        {
            return db.TSNguyenVong_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
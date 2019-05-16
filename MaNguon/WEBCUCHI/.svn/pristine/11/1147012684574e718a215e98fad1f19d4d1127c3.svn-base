using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class SlideServices
    {
        public static SlideController db = new SlideController();

        #region[Slide_Update]
        public void Slide_Update(SlideInfo data)
        {
            db.Slide_Update(data);
        }
        #endregion

        #region[Slide_GetByTop]
        public DataTable Slide_GetByTop(string Top, string Where, String Order)
        {
            return db.Slide_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
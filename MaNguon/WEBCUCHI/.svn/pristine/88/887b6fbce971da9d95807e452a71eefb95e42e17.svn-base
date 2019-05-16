using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class DaoTaoFileServices
    {
        public static DaoTaoFileController db = new DaoTaoFileController();

        #region[DaoTaoFile_Insert]
        public void DaoTaoFile_Insert(DaoTaoFileInfo data)
        {
            db.DaoTaoFile_Insert(data);
        }
        #endregion

        #region[DaoTaoFile_Delete]
        public void DaoTaoFile_Delete(string ID)
        {
            db.DaoTaoFile_Delete(ID);
        }
        #endregion

        #region[DaoTaoFile_DeletebyIDTin]
        public void DaoTaoFile_DeletebyIDTin(string IDTin)
        {
            db.DaoTaoFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[DaoTaoFile_GetByTop]
        public DataTable DaoTaoFile_GetByTop(string Top, string Where, String Order)
        {
            return db.DaoTaoFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
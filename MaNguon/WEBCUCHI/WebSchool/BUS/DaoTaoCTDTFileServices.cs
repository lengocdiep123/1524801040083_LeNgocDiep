using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class DaoTaoCTDTFileServices
    {
        public static DaoTaoCTDTFileController db = new DaoTaoCTDTFileController();

        #region[DaoTaoCTDTFile_Insert]
        public void DaoTaoCTDTFile_Insert(DaoTaoCTDTFileInfo data)
        {
            db.DaoTaoCTDTFile_Insert(data);
        }
        #endregion

        #region[DaoTaoCTDTFile_Delete]
        public void DaoTaoCTDTFile_Delete(string ID)
        {
            db.DaoTaoCTDTFile_Delete(ID);
        }
        #endregion

        #region[DaoTaoCTDTFile_DeletebyIDTin]
        public void DaoTaoCTDTFile_DeletebyIDTin(string IDTin)
        {
            db.DaoTaoCTDTFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[DaoTaoCTDTFile_GetByTop]
        public DataTable DaoTaoCTDTFile_GetByTop(string Top, string Where, String Order)
        {
            return db.DaoTaoCTDTFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
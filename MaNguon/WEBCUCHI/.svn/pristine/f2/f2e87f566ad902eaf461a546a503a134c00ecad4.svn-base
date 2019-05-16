using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebSchool.DAO;

namespace WebSchool.BUS
{
    public class HSSVFileServices
    {
        public static HSSVFileController db = new HSSVFileController();

        #region[HSSVFile_Insert]
        public void HSSVFile_Insert(HSSVFileInfo data)
        {
            db.HSSVFile_Insert(data);
        }
        #endregion

        #region[HSSVFile_Delete]
        public void HSSVFile_Delete(string ID)
        {
            db.HSSVFile_Delete(ID);
        }
        #endregion

        #region[HSSVFile_DeletebyIDTin]
        public void HSSVFile_DeletebyIDTin(string IDTin)
        {
            db.HSSVFile_DeletebyIDTin(IDTin);
        }
        #endregion

        #region[HSSVFile_GetByTop]
        public DataTable HSSVFile_GetByTop(string Top, string Where, String Order)
        {
            return db.HSSVFile_GetByTop(Top, Where, Order);
        }
        #endregion
    }
}
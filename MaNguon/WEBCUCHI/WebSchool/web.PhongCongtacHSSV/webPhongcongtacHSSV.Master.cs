using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.PhongCongtacHSSV
{
    public partial class webPhongcongtacHSSV : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Tin Truong
                DataTable dttruong = HSSVTinServiecs.db.HSSVTintuc_GetByTop("8", "dangtin=1", "ID desc");

                dtltruong.DataSource = dttruong;
                dtltruong.DataBind();

                //////Thoi khoa bieu
                //DataTable dttkb = TruongSinhVienTinServiecs.db.TruongSinhVienTintuc_GetByTop("6", "IDChude=2 and dangtin=1", "ID desc");

                //dtltkb.DataSource = dttkb;
                //dtltkb.DataBind();

            }
        }

        public string decreaseTitle(string obj)
        {
            string str = "";
            if (obj.Length > 34)
            {
                str = obj.Remove(34);
                str = String.Concat(str.Remove(str.LastIndexOf(' ')), "...");
            }
            else
                str = obj;
            return str;
        }
    }
}
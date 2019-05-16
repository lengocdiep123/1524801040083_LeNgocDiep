using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.Truong
{
    public partial class webTruong : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Tin Truong
                DataTable dttruong = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("6", "IDChude=4 and dangtin=1", "ID desc");

                dtltruong.DataSource = dttruong;
                dtltruong.DataBind();

                ////Thoi khoa bieu
                DataTable dttkb = TruongSinhVienTinServiecs.db.TruongSinhVienTintuc_GetByTop("", "IDChude=2 and dangtin=1", "ID desc");
       
                dtltkb.DataSource = dttkb;
                dtltkb.DataBind();

            }
        }

        public string decreaseTitle(string obj)
        {
            string str = "";
            if (obj.Length > 48)
            {
                str = obj.Remove(48);
                str = String.Concat(str.Remove(str.LastIndexOf(' ')), "...");
            }
            else
                str = obj;
            return str;
        }
    }
}
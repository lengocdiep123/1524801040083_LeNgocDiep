using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.PhongCongtacHSSV
{
    public partial class PhongcongtacHSSV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlHead headTag = (HtmlHead)this.Header;
            
            headTag.Title = "Phòng Công tác học sinh sinh viên - Trường Trung Cấp Nghề Củ Chi";
            DataTable dtHSSV = HSSVTinServiecs.db.HSSVTintuc_GetByTop("14", "dangtin=1", "ID desc");
            DataTable dtt1 = HSSVTinServiecs.db.HSSVTintuc_GetByTop("1", "dangtin=1", "ID desc");
            if (dtHSSV.Rows.Count > 0)
            {
                if (checkVisible(dtHSSV.Rows[0]["anhdaidien"].ToString()))
                    imgHSSV.ImageUrl = dtHSSV.Rows[0]["anhdaidien"].ToString();

                imgHSSV.ToolTip = dtHSSV.Rows[0]["tieude"].ToString();
                imgHSSV.CommandArgument = dtHSSV.Rows[0]["ID"].ToString();
                dtl1.DataSource = dtt1;
                dtl1.DataBind();
                dtlHSSV.DataSource = dtHSSV;
                dtlHSSV.DataBind();
            }

        }

        public bool checkVisible(string obj)
        {
            if (obj.Length > 0)
                return true;
            return false;
        }

        public string decreaseTitle(string obj)
        {
            string str = "";
            if (obj.Length > 68)
            {
                str = obj.Remove(68);
                str = String.Concat(str.Remove(str.LastIndexOf(' ')), "...");
            }
            else
                str = obj;
            return str;
        }

        public string decreaseTitle01(string obj)
        {
            string str = "";
            if (obj.Length > 112)
            {
                str = obj.Remove(112);
                str = String.Concat(str.Remove(str.LastIndexOf(' ')), "...");
            }
            else
                str = obj;
            return str;
        }

        protected void imgHSSV_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("HSSVXemchitiettin.aspx?ID=", ID));
        }
    }
}
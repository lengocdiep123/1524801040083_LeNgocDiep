using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.Truong
{
    public partial class GT_Sodotochuc : System.Web.UI.Page
    {
        HtmlHead headTag;

        protected void Page_Load(object sender, EventArgs e)
        {
            headTag = (HtmlHead)this.Header;
            if (!IsPostBack)
            {
                DataTable dttieude = TruongGioiThieuServiecs.db.TruongGioiThieu_GetByTop("", "ID=3", "");
                if (dttieude.Rows.Count > 0)
                {
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
					headTag.Title = dttieude.Rows[0]["Chude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                }

                DataTable dt = TruongGioiThieuTinServiecs.db.TruongGioiThieuTintuc_GetByTop("1", "IDChude=3 and dangtin=1", "ID desc");
              
                if (dt.Rows.Count > 0)
                {
                    DataList1.DataSource = dt;
                    DataList1.DataBind();
                }
            }
        }
        public bool checkVisible(string obj)
        {
            if (obj.Length > 0)
                return true;
            return false;
        }
    }
}
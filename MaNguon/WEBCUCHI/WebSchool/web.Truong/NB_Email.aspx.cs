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
    public partial class NB_Email : System.Web.UI.Page
    {
        HtmlHead headTag;

        protected void Page_Load(object sender, EventArgs e)
        {
            headTag = (HtmlHead)this.Header;
            if (!IsPostBack)
            {
                DataTable dttieude = TruongNoiBoServiecs.db.TruongNoiBo_GetByTop("", "ID=1", "");
                if (dttieude.Rows.Count > 0)
                {
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
					headTag.Title = dttieude.Rows[0]["Chude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                }
                DataList1.DataSource = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("1", "IDChude=1 and dangtin=1", "ID desc");
                DataList1.DataBind();
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
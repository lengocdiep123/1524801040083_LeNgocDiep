using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.PhongDaotao
{
    public partial class DaoTao_GioiThieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlHead headTag = (HtmlHead)this.Header;
            headTag.Title = "Giới thiệu - Trường Trung Cấp Nghề Củ Chi";
            if (!IsPostBack)
            {
                DataTable dt = DaoTaoTinServiecs.db.DaoTaoTintuc_GetByTop("1", "IDChude=1 and dangtin=1", "ID desc");

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
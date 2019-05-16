using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.Tuyensinh
{
    public partial class Tuyensinh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dtTS = TSTinServiecs.db.TSTintuc_GetByTop("14", "dangtin=1", "ID desc");
            DataTable dtt1 = TSTinServiecs.db.TSTintuc_GetByTop("1", "dangtin=1", "ID desc");
            if (dtTS.Rows.Count > 0)
            {
                if (checkVisible(dtTS.Rows[0]["anhdaidien"].ToString()))
                    imgTS.ImageUrl = dtTS.Rows[0]["anhdaidien"].ToString();

                imgTS.ToolTip = dtTS.Rows[0]["tieude"].ToString();
                imgTS.CommandArgument = dtTS.Rows[0]["ID"].ToString();
                dtl1.DataSource = dtt1;
                dtl1.DataBind();
                dtlTS.DataSource = dtTS;
                dtlTS.DataBind();
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

        protected void imgTS_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("TSXemchitiettin.aspx?ID=", ID));
        }
    }
}
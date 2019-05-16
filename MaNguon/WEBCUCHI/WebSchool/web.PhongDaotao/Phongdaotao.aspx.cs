using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.BUS;

namespace WebSchool.web.PhongDaotao
{
    public partial class Phongdaotao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable dtDaoTao = DaoTaoTinServiecs.db.DaoTaoTintuc_GetByTop("14", "dangtin=1", "ID desc");
            DataTable dtt1 = DaoTaoTinServiecs.db.DaoTaoTintuc_GetByTop("1", "dangtin=1", "ID desc");
            if (dtDaoTao.Rows.Count > 0)
            {
                if (checkVisible(dtDaoTao.Rows[0]["anhdaidien"].ToString()))
                    imgDaoTao.ImageUrl = dtDaoTao.Rows[0]["anhdaidien"].ToString();

                imgDaoTao.ToolTip = dtDaoTao.Rows[0]["tieude"].ToString();
                imgDaoTao.CommandArgument = dtDaoTao.Rows[0]["ID"].ToString();
                dtl1.DataSource = dtt1;
                dtl1.DataBind();
                dtlDaoTao.DataSource = dtDaoTao;
                dtlDaoTao.DataBind();
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

        protected void imgDaoTao_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("DaoTaoXemchitiettin.aspx?ID=", ID));
        }
    }
}
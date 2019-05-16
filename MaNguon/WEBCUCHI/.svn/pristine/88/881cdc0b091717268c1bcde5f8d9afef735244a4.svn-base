using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSchool.BUS;
using WebSchool.Common;

namespace WebSchool.web.PhongDaotao
{
    public partial class DaotaoXemchitiettin : System.Web.UI.Page
    {
        HtmlHead headTag;
        protected void Page_Load(object sender, EventArgs e)
        {
            headTag = (HtmlHead)this.Header;
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                string[] tach = Request.QueryString.ToString().Split('=');
                if (String.Compare(tach[0], "ID", true) == 0)
                {

                    dt = DaoTaoTinServiecs.db.DaoTaoTintuc_GetByTop("", "ID=" + Request.QueryString["ID"].ToString(), "");
                    DataTable dttieude = DaoTaoServiecs.db.DaoTao_GetByTop("", "ID=" + dt.Rows[0]["IDChude"].ToString(), "");
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
                    headTag.Title = dttieude.Rows[0]["Chude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                    dtldetail.DataSource = dt;
                    dtldetail.DataBind();
                }
                else
                    WebMsgBox.Show("Không hiển thị được tin");
            }
        }
        public bool checkVisible(string obj)
        {
            if (obj.Length > 0)
                return true;
            return false;
        }

        protected void lbtback_Click(object sender, EventArgs e)
        {
                Response.Redirect("~/web.PhongDaotao/Phongdaotao.aspx");
        }

        DataTable BindGirdListFile(string IDTin)
        {
            DataTable dt = new DataTable();
            dt = DaoTaoFileServices.db.DaoTaoFile_GetByTop("", "IDTin=" + IDTin, "");
            return dt;
        }

        protected void dtldetail_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item | e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string TinID = Convert.ToString(DataBinder.Eval(e.Item.DataItem, "ID"));
                DataTable dt = new DataTable();
                dt = BindGirdListFile(TinID);

                if (dt.Rows.Count > 0)
                {
                    DataList listfile = (DataList)e.Item.FindControl("dtlfile");
                    Label lb = (Label)e.Item.FindControl("lbattachfile");
                    if (listfile != null)
                    {
                        lb.Visible = true;
                        listfile.DataSource = dt;
                        listfile.DataBind();
                    }
                }
            }
        }

        protected void lbtlinkdownload_Command(object sender, CommandEventArgs e)
        {

            try
            {
                string ID = e.CommandArgument.ToString();
                DataTable dt = DaoTaoFileServices.db.DaoTaoFile_GetByTop("", "ID=" + ID, "");
                string filepath = dt.Rows[0]["duongdan"].ToString();
                string[] tach = filepath.Split('/');

                HttpResponse response = HttpContext.Current.Response;
                response.Clear();
                response.ContentType = "application/octect-stream";
                response.AppendHeader("content-disposition", "filename=" + tach[tach.Length - 1]);
                filepath = Server.MapPath(filepath).Replace("web.Truong\\", "");
                response.TransmitFile(filepath);
                response.End();

            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }
    }
}
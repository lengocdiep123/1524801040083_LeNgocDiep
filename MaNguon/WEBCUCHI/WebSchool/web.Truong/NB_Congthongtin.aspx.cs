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

namespace WebSchool.web.Truong
{
    public partial class NB_Congthongtin : System.Web.UI.Page
    {
        HtmlHead headTag;

        protected void Page_Load(object sender, EventArgs e)
        {
            headTag = (HtmlHead)this.Header;
           
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                string[] tach = Request.QueryString.ToString().Split('=');
                if (String.Compare(tach[0], "sinhvien", true) == 0)
                {
                    DataTable dttieude = TruongNoiBoServiecs.db.TruongNoiBo_GetByTop("", "ID=6", "");
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
                    dt = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("", "IDChude=6 and ID=" + Request.QueryString["sinhvien"].ToString(), "");
                    headTag.Title = dt.Rows[0]["tieude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                    dtldetail.DataSource = dt;
                    dtldetail.DataBind();
                }
                else if (String.Compare(tach[0], "tuyensinh") == 0)
                {
                    DataTable dttieude = TruongNoiBoServiecs.db.TruongNoiBo_GetByTop("", "ID=5", "");
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
                    dt = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("", "IDChude=5 and ID=" + Request.QueryString["tuyensinh"].ToString(), "");
                    headTag.Title = dt.Rows[0]["tieude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                    dtldetail.DataSource = dt;
                    dtldetail.DataBind();
                }
                else if (String.Compare(tach[0], "truong", true) == 0)
                {
                    DataTable dttieude = TruongNoiBoServiecs.db.TruongNoiBo_GetByTop("", "ID=4", "");
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
                    dt = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("", "IDChude=4 and ID=" + Request.QueryString["truong"].ToString(), "");
                    headTag.Title = dt.Rows[0]["tieude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
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
            if (String.Compare(lbchudetieude.Text,"CỔNG THÔNG TIN TRƯỜNG",true) == 0)
                Response.Redirect("~/web.Truong/NB_Congthongtintruong.aspx");
            else if (String.Compare(lbchudetieude.Text, "CỔNG THÔNG TIN TUYỂN SINH", true) == 0)
                Response.Redirect("~/web.Truong/NB_Congthongtintuýeninh.aspx");
            else
                Response.Redirect("~/web.Truong/NB_Congthongtinsinhvien.aspx");
        }

        DataTable BindGirdListFile(string IDTin)
        {
            DataTable dt = new DataTable();
            dt = TruongNoiBoFileServices.db.TruongNoiBoFile_GetByTop("", "IDTin=" + IDTin, "");
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
                DataTable dt = TruongNoiBoFileServices.db.TruongNoiBoFile_GetByTop("", "ID=" + ID, "");
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
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
    public partial class Khoa_TT_KhoasuphamGDN : System.Web.UI.Page
    {
        HtmlHead headTag;
        int numberpage = 12;
        protected void Page_Load(object sender, EventArgs e)
        {
            headTag = (HtmlHead)this.Header;
            if (!IsPostBack)
            {
                DataTable dttieude = TruongKhoaTrungTamServiecs.db.TruongKhoaTrungTam_GetByTop("", "ID=8", "");
                if (dttieude.Rows.Count > 0)
                {
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
					headTag.Title = dttieude.Rows[0]["Chude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                }

                DataTable dt = TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_GetByTop("", "IDChude=8 and dangtin=1", "ID desc");

                cltpage.PageSize = numberpage;
                cltpage.DataSource = dt.DefaultView;
                cltpage.BindToControl = dtlnews;
                dtlnews.DataSource = cltpage.DataSourcePaged;
                dtlnews.DataBind();

                pnlist.Visible = true;
                pndetail.Visible = false;
            }
        }
        public bool checkVisible(string obj)
        {
            if (obj.Length > 0)
                return true;
            return false;
        }

        protected void lbtnews_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            DataTable dt = TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_GetByTop("", "ID=" + ID, "");
            headTag.Title = dt.Rows[0]["tieude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
            dtldetail.DataSource = dt;
            dtldetail.DataBind();

            pnlist.Visible = false;
            pndetail.Visible = true;
        }
        protected void lbtback_Click(object sender, EventArgs e)
        {
            pndetail.Visible = false;
            pnlist.Visible = true;

            DataTable dt = TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_GetByTop("", "IDChude=8 and dangtin=1", "ID desc");
            headTag.Title = lbchudetieude.Text + " - Trường Trung Cấp Nghề Củ Chi";
            cltpage.PageSize = numberpage;
            cltpage.DataSource = dt.DefaultView;
            cltpage.BindToControl = dtlnews;
            dtlnews.DataSource = cltpage.DataSourcePaged;
            dtlnews.DataBind();
        }

        DataTable BindGirdListFile(string IDTin)
        {
            DataTable dt = new DataTable();
            dt = TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_GetByTop("", "IDTin=" + IDTin, "");
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
                DataTable dt = TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_GetByTop("", "ID=" + ID, "");
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
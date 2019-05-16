using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.BUS;
using WebSchool.Common;

namespace WebSchool.web.Admin
{
    public partial class listDangkytructuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null) Response.Redirect("~/web.Admin/indexadmin.aspx");
            //if (int.Parse(Session["Role"].ToString()) != 19) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (int.Parse(Session["Role"].ToString()) == 1 || int.Parse(Session["Role"].ToString()) == 19)
            {
            }
            else
                Response.Redirect("~/web.Admin/indexadmin.aspx");

            if (!IsPostBack)
            {
                bindGrid();
                pnList.Visible = true;
                pnDetail.Visible = false;
              
            }
        }

        public string totnghiep(string obj)
        { 
            if(string.Compare(obj,"1") == 0)
                return "THPT";
            return "THCS";
        }

        void bindGrid()
        {
            DataTable dt = TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_GetByTop("","","ngaydangky desc");
            if (dt != null)
            {
                grdList.DataSource = dt;
                grdList.DataBind();
            }
        }

        protected void btLoc_Click(object sender, EventArgs e)
        {
            if ((string.Compare(txtTungay.Text, "") != 0) && (string.Compare(txtDenngay.Text, "") != 0) && Convert.ToDateTime(txtTungay.Text) <= Convert.ToDateTime(txtDenngay.Text))
            {
                DateTime denngay = Convert.ToDateTime(txtDenngay.Text);
                int year = denngay.Year;
                int month = denngay.Month;
                int day = denngay.Day;
                if (day > 30)
                {
                    day = 1;
                    if (month > 11)
                    {
                        month = 1; year = year + 1;
                    }
                    else
                        month = month + 1;
                }
                else if (day == 30)
                {
                    if (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
                    {
                        month = month + 1;
                        day = 1;
                    }
                    else
                        day = day + 1;
                }
                else
                    day = day + 1;

                denngay = new DateTime(year, month, day);
                DataTable dt = TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_GetByTop("", "ngaydangky >= '" + txtTungay.Text + "'" +
                    " and ngaydangky <= '" + denngay.ToString() + "'", "ngaydangky desc");
                grdList.DataSource = dt;
                grdList.DataBind();
            }
            else
            {
                WebMsgBox.Show("Bạn nhập ngày lọc chưa đúng");
            }
        }

        protected void grdList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            try
            {
                string temp = e.CommandArgument.ToString();
                if (e.CommandName == "Delete")
                {
                    TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_Delete(temp);
                    bindGrid();
                }
                else
                {
                    pnDetail.Visible = true;
                    DataTable dt = TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_GetByTop("", "ID=" + temp, "");
                    dtdetailview.DataSource = dt;
                    dtdetailview.DataBind();
                }
         
            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }

        protected void btprint_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if ((string.Compare(txtTungay.Text, "") != 0) && (string.Compare(txtDenngay.Text, "") != 0) && Convert.ToDateTime(txtTungay.Text) <= Convert.ToDateTime(txtDenngay.Text))
            {
                DateTime denngay = Convert.ToDateTime(txtDenngay.Text);
                int year = denngay.Year;
                int month = denngay.Month;
                int day = denngay.Day;
                if (day > 30)
                {
                    day = 1;
                    if (month > 11)
                    {
                        month = 1; year = year + 1;
                    }
                    else
                        month = month + 1;
                }
                else if (day == 30)
                {
                    if (month == 2 || month == 4 || month == 6 || month == 9 || month == 11)
                    {
                        month = month + 1;
                        day = 1;
                    }
                    else
                        day = day + 1;
                }
                else
                    day = day + 1;

                denngay = new DateTime(year, month, day);
                dt = TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_GetByTop("", "ngaydangky >= '" + txtTungay.Text + "'" +
                    " and ngaydangky <= '" + denngay.ToString() + "'", "ngaydangky desc");
                grdList.DataSource = dt;
                grdList.DataBind();
            }
            else
            {
                dt = TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_GetByTop("", "", "ngaydangky desc");
                if (dt != null)
                {
                    grdList.DataSource = dt;
                    grdList.DataBind();
                }
            }

            if (dt != null)
            {
                DTToExcel(dt);
            }
            else
                WebMsgBox.Show("Lỗi database");
        }

        public void DTToExcel(DataTable dt)
        {
          
            string FileName = "Export_DSDK";

            FileInfo f = new FileInfo(Server.MapPath("Downloads") + string.Format("\\{0}.xlsx", FileName));
            if (f.Exists)
                f.Delete(); // delete the file if it already exist.

            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearHeaders();
            response.ClearContent();
            response.Charset = Encoding.UTF8.WebName;
            response.AddHeader("content-disposition", "attachment; filename=" + FileName + ".xls");
            response.AddHeader("Content-Type", "application/Excel");
            response.ContentType = "application/vnd.xlsx";
            //response.AddHeader("Content-Length", file.Length.ToString());
            //Encoding UTF-8
            Response.ContentEncoding = System.Text.Encoding.Unicode;
            Response.BinaryWrite(System.Text.Encoding.Unicode.GetPreamble());

            // create a string writer
            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter htw = new HtmlTextWriter(sw))
                {
                     //instantiate a datagrid
                    DataGrid dg = new DataGrid();
                    
                    dg.DataSource = dt;
                    dg.DataBind();
                    dg.RenderControl(htw);
                
                    response.Write(sw.ToString());
                    dg.Dispose();
                    dt.Dispose();
                    response.End();
                }
            }
        }
    }
}
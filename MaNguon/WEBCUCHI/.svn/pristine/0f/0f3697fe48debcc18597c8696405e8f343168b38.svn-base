using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.Common;

namespace WebSchool.web.Admin
{
    public partial class ChangeHeaderDaotao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (int.Parse(Session["Role"].ToString()) != 1) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (!IsPostBack)
            {
                pnSlide01.Visible = true;
                pnResult.Visible = false;
            }
        }

        protected void bt_savefile_Click(object sender, EventArgs e)
        {
            string strFileName01 = "";
        
            if (upfile1.HasFile)
            {
                if (CheckFileTypeImg(upfile1.FileName))
                {
                    strFileName01 = string.Format("{0}\\{1}{2}", Server.MapPath(@"web.PhongDaotao/images"), "header", upfile1.FileName.Substring(upfile1.FileName.LastIndexOf(".")));
                    strFileName01 = strFileName01.Replace("web.Admin\\", "");
              
                    System.Drawing.Image objImage = System.Drawing.Image.FromStream(upfile1.PostedFile.InputStream);
                    int iWidth = 0;
                    int iHeight = 0;
                    if ((objImage != null))
                    {
                        iWidth = objImage.Width;
                        iHeight = objImage.Height;
                    }

                    if (iWidth == 1000 && iHeight == 250)
                    {
                        upfile1.PostedFile.SaveAs(strFileName01);
                     
                        pnSlide01.Visible = false;
                        pnResult.Visible = true;
                    }
                    else
                        WebMsgBox.Show("File ảnh phải có kich thước width 1000 x height 250");

                }
                else
                {
                    WebMsgBox.Show("Không phải file ảnh");
                }
            }
        }

        bool CheckFileTypeImg(string FileName)
        {
            string ext = Path.GetExtension(FileName);
            if (ext.Equals(".jpg"))
            {
                return true;
            }
            return false;
        }
    }
}
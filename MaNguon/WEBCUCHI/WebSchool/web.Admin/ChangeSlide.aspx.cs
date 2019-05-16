﻿using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.Common;
using WebSchool.BUS;

namespace WebSchool.web.Admin
{
    public partial class ChangeSlide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (int.Parse(Session["Role"].ToString()) != 1) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (!IsPostBack)
            {
                BindGrid();
                pnList.Visible = true;
                pnCreate.Visible = false;
            }
        }

        protected void BindGrid()
        {
            grdList.DataSource = SlideServices.db.Slide_GetByTop("", "", "");
            grdList.DataBind();
        }

        public bool trangthaidangtin(string obj)
        {
            bool b = bool.Parse(obj.ToString());

            return b;
        }
        protected void grdList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            try
            {
                string temp = e.CommandArgument.ToString();
                lbtempID.Text = temp;
                if (e.CommandName == "Edit")
                {
                    DataTable dt = SlideServices.db.Slide_GetByTop("", "ID=" + lbtempID.Text, "");
                    lbTieude.Text = dt.Rows[0]["Name"].ToString();
                    pnList.Visible = false;
                    pnCreate.Visible = true;
                }

            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }

        protected void bt_savefile_Click(object sender, EventArgs e)
        {
            string strFileName01 = "";
            DataTable dt = SlideServices.db.Slide_GetByTop("", "ID=" + lbtempID.Text, "");
            string path = dt.Rows[0]["duongdan"].ToString() + "/images";
            if (upfile1.HasFile)
            {
                if (CheckFileTypeImg(upfile1.FileName))
                {
                    strFileName01 = string.Format("{0}\\{1}{2}", Server.MapPath(@path), dt.Rows[0]["nameSlide"].ToString(), upfile1.FileName.Substring(upfile1.FileName.LastIndexOf(".")));
                    strFileName01 = strFileName01.Replace("web.Admin\\", "");

                    System.Drawing.Image objImage = System.Drawing.Image.FromStream(upfile1.PostedFile.InputStream);
                    int iWidth = 0;
                    int iHeight = 0;
                    if ((objImage != null))
                    {
                        iWidth = objImage.Width;
                        iHeight = objImage.Height;
                    }

                    if (iWidth == 1000 && iHeight == 290)
                    {
                        upfile1.PostedFile.SaveAs(strFileName01);
                        pnList.Visible = true;
                        pnCreate.Visible = false;
                        BindGrid();
                    }
                    else
                        WebMsgBox.Show("File ảnh phải có kich thước with 1000 x height 290");

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

        protected void grdList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
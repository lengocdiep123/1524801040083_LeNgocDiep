using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.BUS;
using WebSchool.Common;
using WebSchool.DAO;

namespace WebSchool.web.Admin
{
    public partial class listTinkhoagiaoducnghenghiep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null) Response.Redirect("~/web.Admin/indexadmin.aspx");
            
            if (int.Parse(Session["Role"].ToString()) == 1 || int.Parse(Session["Role"].ToString()) == 17)
            {
            }
            else
                Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (!IsPostBack)
            {
                pnList.Visible = true;
                pnCreate.Visible = false;
               
                pnattachfile.Visible = false;
                pnlistfile.Visible = false;
                BindGrid("8");
                //--config ckfinder
                CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
                _FileBrowser.BasePath = "ckfinder";
                _FileBrowser.SetupCKEditor(txtNoidungchinh);
            }
        }

        //Gird view List news
        protected void BindGrid(string idchude)
        {
            grdList.DataSource = TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_GetByChude(idchude);
            grdList.DataBind();
        }

        // Form List news
        protected void bt_new_Click(object sender, EventArgs e)
        {
            pnList.Visible = false;
            pnCreate.Visible = true;

            txtTieude.Text = "";
            txtnoidungtomtat.Text = "";
            txtNoidungchinh.Text = "";
        }
        protected void ddlChude_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGrid(ddlChude.SelectedValue);
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
                DataTable dt = TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_GetByTop("", "ID=" + temp, "");
                if (e.CommandName == "Edit")
                {

                    ddlChudenew.SelectedValue = dt.Rows[0]["IDChude"].ToString();

                    txtTieude.Text = dt.Rows[0]["tieude"].ToString();
                    txtnoidungtomtat.Text = dt.Rows[0]["tomtat"].ToString();
                    txtNoidungchinh.Text = dt.Rows[0]["noidung"].ToString();
                    lbtempanhdaidien.Text = dt.Rows[0]["anhdaidien"].ToString();
                    bt_savenews.Text = "Cập nhật tin";
                    pnList.Visible = false;
                    pnCreate.Visible = true;
                }
                else if (e.CommandName == "Delete")
                {
                    if (String.Compare(dt.Rows[0]["anhdaidien"].ToString(), "") != 0)
                        File.Delete(Server.MapPath(dt.Rows[0]["anhdaidien"].ToString()));
                    TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_Delete(temp);

                    DataTable dtFile = TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_GetByTop("", "IDTin=" + temp, "");
                    if (dtFile != null)
                    {
                        foreach (DataRow r in dtFile.Rows)
                        {
                            File.Delete(Server.MapPath("~/" + r["Duongdan"].ToString()));
                        }
                        TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_DeletebyIDTin(temp);
                    }
                    BindGrid(ddlChude.SelectedValue);
                }
                else
                {
                    BindGridFile(temp);
                    //lbtempID.Text = temp;
                    pnlistfile.Visible = true;
                    pnList.Visible = false;

                    lbTieudedsfile.Text = dt.Rows[0]["tieude"].ToString();
                    lbTieudethemfile.Text = dt.Rows[0]["tieude"].ToString();
                }

            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }

        protected void bt_postnews_Click(object sender, EventArgs e)
        {
            try
            {
                DataGridItem item = default(DataGridItem);
                for (int i = 0; i < grdList.Items.Count; i++)
                {
                    item = grdList.Items[i];
                    if (item.ItemType == ListItemType.AlternatingItem | item.ItemType == ListItemType.Item)
                    {
                        TruongKhoaTrungTamTinInfo obj = new TruongKhoaTrungTamTinInfo();
                        if (((CheckBox)item.FindControl("ChkSelect")).Checked)
                        {
                            obj.ID = item.Cells[1].Text;
                            obj.dangtin = (1).ToString();

                            try
                            {
                                TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_UpdateDangtin(obj);
                            }
                            catch (Exception ex)
                            {
                                WebMsgBox.Show("Lỗi " + ex.Message);
                            }
                        }
                        else
                        {
                            obj.ID = item.Cells[1].Text;
                            obj.dangtin = (0).ToString();

                            try
                            {
                                TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_UpdateDangtin(obj);
                            }
                            catch (Exception ex)
                            {
                                WebMsgBox.Show("Lỗi " + ex.Message);
                            }
                        }
                    }
                }
                BindGrid(ddlChude.SelectedValue);
            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }
        // Form create 1 news new
        protected void bt_savenews_Click(object sender, EventArgs e)
        {
            if (bt_savenews.Text == "Thêm tin")
            {
                try
                {
                    TruongKhoaTrungTamTinInfo obj = new TruongKhoaTrungTamTinInfo();
                    obj.IDChude = ddlChudenew.SelectedValue;
                    obj.tieude = txtTieude.Text;
                    obj.tomtat = txtnoidungtomtat.Text;
                    obj.noidung = txtNoidungchinh.Text;
                    string strFileName = "";
                    if (upAnhdaidien.HasFile)
                    {
                        if (CheckFileTypeImg(upAnhdaidien.FileName))
                        {
                            strFileName = string.Format("{0}\\{1}{2}{3}", Server.MapPath(@"Hinhanh/truong"), (String)Session["UsrName"],
                                        DateTime.Now.ToString("ddMMyyhhmmss"), upAnhdaidien.FileName.Substring(upAnhdaidien.FileName.LastIndexOf(".")));
                            strFileName = strFileName.Replace("web.Admin\\", "");
                            upAnhdaidien.PostedFile.SaveAs(strFileName);
                            obj.anhdaidien = @"~/Hinhanh/truong/" + (String)Session["UsrName"] + DateTime.Now.ToString("ddMMyyhhmmss") +
                                upAnhdaidien.FileName.Substring(upAnhdaidien.FileName.LastIndexOf("."));
                        }
                        else
                        {
                            WebMsgBox.Show("Không phải file ảnh");
                        }
                    }
                    else
                        obj.anhdaidien = "";
                    obj.ngaydang = DateTime.Now;
                    obj.ngaysua = DateTime.Now;
                    obj.dangtin = (0).ToString();
                    TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_Insert(obj);
                    pnList.Visible = true;
                    pnCreate.Visible = false;
                    DataTable dt = TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_GetByTop("1", "", "ID DESC");
                    lbTieudethemfile.Text = dt.Rows[0]["tieude"].ToString();
                    lbtempID.Text = dt.Rows[0]["ID"].ToString();
                    BindGrid(ddlChudenew.SelectedValue);
                    ddlChude.SelectedValue = ddlChudenew.SelectedValue;

                    txtTieude.Text = "";
                    txtnoidungtomtat.Text = "";
                    txtNoidungchinh.Text = "";
                    txtfile1.Text = "";
                }
                catch (Exception ex)
                {
                    WebMsgBox.Show("Lỗi " + ex.Message);
                }
            }
            else
            {
                TruongKhoaTrungTamTinInfo obj = new TruongKhoaTrungTamTinInfo();
                obj.ID = lbtempID.Text;
                obj.IDChude = ddlChudenew.SelectedValue;
                obj.tieude = txtTieude.Text;
                obj.tomtat = txtnoidungtomtat.Text;
                obj.noidung = txtNoidungchinh.Text;
                string strFileName = "";
                if (upAnhdaidien.HasFile)
                {
                    if (CheckFileTypeImg(upAnhdaidien.FileName))
                    {
                        strFileName = string.Format("{0}\\{1}{2}{3}", Server.MapPath(@"Hinhanh/truong"), (String)Session["UsrName"],
                                        DateTime.Now.ToString("ddMMyyhhmmss"), upAnhdaidien.FileName.Substring(upAnhdaidien.FileName.LastIndexOf(".")));
                        strFileName = strFileName.Replace("web.Admin\\", "");
                        upAnhdaidien.PostedFile.SaveAs(strFileName);
                        obj.anhdaidien = @"~/Hinhanh/truong/" + (String)Session["UsrName"] + DateTime.Now.ToString("ddMMyyhhmmss") +
                        upAnhdaidien.FileName.Substring(upAnhdaidien.FileName.LastIndexOf("."));
                    }
                    else
                    {
                        WebMsgBox.Show("Không phải file ảnh");
                    }
                }
                else
                    obj.anhdaidien = lbtempanhdaidien.Text;
                obj.ngaydang = DateTime.Now;
                obj.ngaysua = DateTime.Now;
                obj.dangtin = (0).ToString();
                TruongKhoaTrungTamTinServiecs.db.TruongKhoaTrungTamTintuc_Update(obj);
                pnList.Visible = true;
                pnCreate.Visible = false;
                bt_savenews.Text = "Thêm tin";
                BindGrid(ddlChudenew.SelectedValue);
                ddlChude.SelectedValue = ddlChudenew.SelectedValue;

                txtTieude.Text = "";
                txtnoidungtomtat.Text = "";
                txtNoidungchinh.Text = "";
                txtfile1.Text = "";
            }

        }


        bool CheckFileTypeImg(string FileName)
        {
            string ext = Path.GetExtension(FileName);
            if (ext.Equals(".png") | ext.Equals(".jpg"))
            {
                return true;
            }
            return false;
        }
        protected void bt_previousnews_Click(object sender, EventArgs e)
        {
            pnList.Visible = true;
            pnCreate.Visible = false;

            pnattachfile.Visible = false;
            pnlistfile.Visible = false;
            BindGrid(ddlChude.SelectedValue);
        }
        // Form create attach files
        protected void bt_savefile_Click(object sender, EventArgs e)
        {
            try
            {
                TruongKhoaTrungTamFileInfo obj = new TruongKhoaTrungTamFileInfo();
                obj.IDTin = lbtempID.Text;

                string strFileName = "";
                if (upfile1.HasFile)
                {
                    if (CheckFileTypeDocuments(upfile1.FileName))
                    {
                        strFileName = string.Format("{0}\\{1}{2}{3}", Server.MapPath(@"Filedinhkem/truong"), (String)Session["UsrName"],
                                        DateTime.Now.ToString("ddMMyyhhmmss"), upfile1.FileName.Substring(upfile1.FileName.LastIndexOf(".")));
                        strFileName = strFileName.Replace("web.Admin\\", "");
                        upfile1.PostedFile.SaveAs(strFileName);
                        obj.duongdan = @"Filedinhkem/truong/" + (String)Session["UsrName"] + DateTime.Now.ToString("ddMMyyhhmmss") +
                        upfile1.FileName.Substring(upfile1.FileName.LastIndexOf("."));
                        obj.noidung = txtfile1.Text;
                        TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_Insert(obj);
                        pnlistfile.Visible = true;
                        pnattachfile.Visible = false;
                        BindGridFile(lbtempID.Text);

                        lbfilethongbao.Text = "";
                        txtfile1.Text = "";
                    }
                    else
                    {
                        lbfilethongbao.Text = "File phải có định dạng: *.doc, *.docx, *.xls, *.xlsx, *.pdf";
                    }
                }
            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }
        bool CheckFileTypeDocuments(string FileName)
        {
            string ext = Path.GetExtension(FileName);
            if (ext.Equals(".doc") | ext.Equals(".docx") | ext.Equals(".xls") | ext.Equals(".xlsx") | ext.Equals(".pdf"))
            {
                return true;
            }
            return false;
        }

        // Form list attach files of a news
        protected void BindGridFile(string IDTin)
        {
            grdattachfiles.DataSource = TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_GetByTop("", "IDTin=" + IDTin, "");
            grdattachfiles.DataBind();
        }
        protected void bt_updatefile_Click(object sender, EventArgs e)
        {
            pnattachfile.Visible = true;
            pnlistfile.Visible = false;
            txtfile1.Text = "";
        }

        protected void grdattachfiles_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            try
            {
                string temp = e.CommandArgument.ToString();

                if (e.CommandName == "Delete")
                {
                    DataTable dtFile = TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_GetByTop("", "ID=" + temp, "");
                    if (dtFile != null)
                    {
                        string pathFile = dtFile.Rows[0]["Duongdan"].ToString();
                        TruongKhoaTrungTamFileServices.db.TruongKhoaTrungTamFile_Delete(temp);
                        File.Delete(Server.MapPath("~/" + pathFile));
                    }

                    BindGridFile(temp);
                }
            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi " + ex.Message);
            }
        }

        protected void grdList_ItemDataBound(object sender, DataGridItemEventArgs e)
        {
            ListItemType itemType = e.Item.ItemType;
            if ((itemType != ListItemType.Footer) && (itemType != ListItemType.Separator))
            {
                if (itemType == ListItemType.Header)
                {
                    object checkBox = e.Item.FindControl("chkSelectAll");
                    if ((checkBox != null))
                    {
                        ((CheckBox)checkBox).Attributes.Add("onClick", "Javascript:chkSelectAll_OnClick(this)");
                    }
                }
                else
                {
                    string tableRowId = grdList.ClientID + "_row" + e.Item.ItemIndex;
                    e.Item.Attributes.Add("ID", tableRowId);
                    object checkBox = e.Item.FindControl("chkSelect");
                    if ((checkBox != null))
                    {
                        e.Item.Attributes.Add("onMouseMove", "Javascript:chkSelect_OnMouseMove(this)");
                        e.Item.Attributes.Add("onMouseOut", "Javascript:chkSelect_OnMouseOut(this," + e.Item.ItemIndex + ")");
                        ((CheckBox)checkBox).Attributes.Add("onClick", "Javascript:chkSelect_OnClick(this," + e.Item.ItemIndex + ")");
                    }

                }
            }
        }

        protected void grdList_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
        {
            grdList.CurrentPageIndex = e.NewPageIndex;
            BindGrid(ddlChude.SelectedValue);
        }

    }
}
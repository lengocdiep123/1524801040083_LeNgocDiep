using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSchool.BUS;
using WebSchool.Common;
using WebSchool.DAO;

namespace WebSchool.web.Tuyensinh
{
    public partial class TS_Dangkitructuyen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HtmlHead headTag = (HtmlHead)this.Header;
                headTag.Title = "Đăng ký trực tuyến - Trường Trung Cấp Nghề Củ Chi";
                pnRegister.Visible = true;
                pnResult.Visible = false;
            }
        }

        protected void btDangky_Click(object sender, EventArgs e)
        {
            TSDangKiTrucTuyenTinInfo obj = new TSDangKiTrucTuyenTinInfo();
            obj.hoten = txtHoten.Text;
            obj.ngaysinh = DateTime.Parse(DateTimeClass.ConvertDateTime_ddmmyyyy(txtNgaysinh.Text));
            obj.hokhau = txtHokhau.Text;
            obj.dienthoai = txtDienthoai.Text;
            obj.cmnd = txtCMND.Text;
            obj.email = txtEmail.Text;
            obj.hotennhanthu = txtHotennhanthu.Text;
            obj.diachinhanthu = txtDiachinhanthu.Text;
            obj.dienthoainhanthu = txtDienthoainhanthu.Text;
            obj.datotnghiep = ddlTotnghiep.SelectedValue;
            obj.namtotnghiep = txtNamtotnghiep.Text;
            
            if (ddlNV01Nganh.SelectedIndex >= 0)
            {
                obj.nv1trinhdo = ddlNV01.SelectedItem.Text;
                obj.nv1Nganh = ddlNV01Nganh.SelectedItem.Text;
            }
            else
            {
                obj.nv1trinhdo = "";
                obj.nv1Nganh = "";
            }

            if (ddlNV02Nganh.SelectedIndex >= 0)
            {
                obj.nv2trinhdo = ddlNV02.SelectedItem.Text;
                obj.nv2Nganh = ddlNV02Nganh.SelectedItem.Text;
            }
            else
            {
                obj.nv2trinhdo = "";
                obj.nv2Nganh = "";
            }

            if (ddlNV03Nganh.SelectedIndex >= 0)
            {
                obj.nv3trinhdo = ddlNV03.SelectedItem.Text;
                obj.nv3Nganh = ddlNV03Nganh.SelectedItem.Text;
            }
            else
            {
                obj.nv3trinhdo = "";
                obj.nv3Nganh = "";
            }
            obj.ngaydangky = DateTime.Now;
            TSDangKiTrucTuyenTinServiecs.db.TSDangKiTrucTuyenTintuc_Insert(obj);
           
            pnRegister.Visible = false;
            pnResult.Visible = true;
        }

        protected void ddlNV01_SelectedIndexChanged(object sender, EventArgs e)
        {
            int choose = Convert.ToInt16(ddlNV01.SelectedValue);
            if (choose == 1)
            {
                ddlNV01Nganh.DataSource = TSNVCaoDangServiecs.db.TSNVCaoDang_GetByTop("", "", "");
                ddlNV01Nganh.DataBind();
                ddlNV01Nganh.DataTextField = "NguyenVong";
                ddlNV01Nganh.DataValueField = "ID";
                ddlNV01Nganh.DataBind();
            }
            else if (choose == 2)
            {
                ddlNV01Nganh.DataSource = TSNVTrungCapServiecs.db.TSNVTrungCap_GetByTop("", "", "");
                ddlNV01Nganh.DataBind();
                ddlNV01Nganh.DataTextField = "NguyenVong";
                ddlNV01Nganh.DataValueField = "ID";
                ddlNV01Nganh.DataBind();
            }
            else
            {
                ddlNV01Nganh.Items.Clear();
            }
        }

        protected void ddlNV02_SelectedIndexChanged(object sender, EventArgs e)
        {
            int choose = Convert.ToInt16(ddlNV02.SelectedValue);
            if (choose == 1)
            {
                ddlNV02Nganh.DataSource = TSNVCaoDangServiecs.db.TSNVCaoDang_GetByTop("", "", "");
                ddlNV02Nganh.DataBind();
                ddlNV02Nganh.DataTextField = "NguyenVong";
                ddlNV02Nganh.DataValueField = "ID";
                ddlNV02Nganh.DataBind();
            }
            else if (choose == 2)
            {
                ddlNV02Nganh.DataSource = TSNVTrungCapServiecs.db.TSNVTrungCap_GetByTop("", "", "");
                ddlNV02Nganh.DataBind();
                ddlNV02Nganh.DataTextField = "NguyenVong";
                ddlNV02Nganh.DataValueField = "ID";
                ddlNV02Nganh.DataBind();
            }
            else
            {
                ddlNV02Nganh.Items.Clear();
            }
        }

        protected void ddlNV03_SelectedIndexChanged(object sender, EventArgs e)
        {
            int choose = Convert.ToInt16(ddlNV03.SelectedValue);
            if (choose == 1)
            {
                ddlNV03Nganh.DataSource = TSNVCaoDangServiecs.db.TSNVCaoDang_GetByTop("", "", "");
                ddlNV03Nganh.DataBind();
                ddlNV03Nganh.DataTextField = "NguyenVong";
                ddlNV03Nganh.DataValueField = "ID";
                ddlNV03Nganh.DataBind();
            }
            else if (choose == 2)
            {
                ddlNV03Nganh.DataSource = TSNVTrungCapServiecs.db.TSNVTrungCap_GetByTop("", "", "");
                ddlNV03Nganh.DataBind();
                ddlNV03Nganh.DataTextField = "NguyenVong";
                ddlNV03Nganh.DataValueField = "ID";
                ddlNV03Nganh.DataBind();
            }
            else
            {
                ddlNV03Nganh.Items.Clear();
            }
        }
    }
}
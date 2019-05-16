using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.Common;
using WebSchool.BUS;
using WebSchool.DAO;

namespace WebSchool.web.Admin
{
    public partial class doimatkhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (int.Parse(Session["Role"].ToString()) < 1) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (!IsPostBack)
                lbAccount.Text = Session["UserName"].ToString();
        }

        protected void bt_changePassWord_Click(object sender, EventArgs e)
        {
            var obj = new AccountInfo();
            try
            {
                DataTable dt = AccountServices.db.Account_GetByUserName(Session["UserName"].ToString());
                if (StringClass.Encrypt(txtPasswordold.Text).Equals(dt.Rows[0]["PassWord"].ToString()))
                {
                    AccountServices.db.Account_ChangePassWord(Session["UserName"].ToString(), StringClass.Encrypt(txtPasswordenter.Text));
                    WebMsgBox.Show("Đổi Mật Khẩu Thành Công");
                    Session.Clear();   
                    Response.Redirect("~/web.Admin/indexadmin.aspx");
                }
                else
                {
                    WebMsgBox.Show("Mật khẩu cũ bạn nhập chưa đúng");
                }
            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Bạn thay đổi mật khẩu thất bại, lỗi tại: " + ex.Message);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSchool.Common;
using WebSchool.BUS;

namespace WebSchool.web.Admin
{
    public partial class indexadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();
                if (Session["UserName"] != null)
                {
                    //HttpCookie ck = Request.Cookies["UserName"];
                    //txtUserName.Text = ck.Value;
                    //txtPassword.Text = "";
                    //ckblogin.Checked = false;
                }
              
            }
        }

        protected void bt_login_Click(object sender, EventArgs e)
        {
            int qh = AccountServices.db.Account_CheckLogin(txtUserName.Text, StringClass.Encrypt(txtPassword.Text));

            if (qh > 0)
            {
                if (ckblogin.Checked)
                {
                    //HttpCookie ck = new HttpCookie("UserName");
                    //ck.Value = txtUserName.Text;
                    //ck.Expires = DateTime.Now.AddDays(15);
                    //Response.Cookies.Add(ck);
                }
            }

            switch (qh)
            { 
                case 1:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listuser.aspx");
                    break;
                case 2:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTintruongvanoibo.aspx");
                    break;
                case 3:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinhanhchinh.aspx");
                    break;
                case 4:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTintaichinh.aspx");
                    break;
                case 5:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTincongtacsinhvien.aspx");
                    break;
                case 6:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTindaotao.aspx");
                    break;
                case 7:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinquantrithietbi.aspx");
                    break;
                case 8:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinhoctacquoctevakhoahoc.aspx");
                    break;
                case 9:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTindambaochatluongvakhoathi.aspx");
                    break;
                case 10:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoacokhi.aspx");
                    break;
                case 11:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoacongngheoto.aspx");
                    break;
                case 12:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoacongnghethongtin.aspx");
                    break;
                case 13:
                    Session["Role"] = qh;
                Session["UserName"] = txtUserName.Text.Trim();
                Response.Redirect("listTinkhoadiendienlanh.aspx");
                    break;
                case 14:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoadientu.aspx");
                    break;
                case 15:
                     Session["Role"] = qh;
                Session["UserName"] = txtUserName.Text.Trim();
                Response.Redirect("listTinkhoakinhte.aspx");
                    break;
                case 16:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoacongnghethucpham.aspx");
                    break;
                case 17:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoagiaoducnghenghiep.aspx");
                    break;
                case 18:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinkhoakhoahocoban.aspx");
                    break;
                case 19:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTintttuyensinhvahotrovieclam.aspx");
                    break;
                case 20:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinttboiduongkynangvaquanhedoanhnghiep.aspx");
                    break;
                case 21:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTindangbo.aspx");
                    break;
                case 22:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinhoicuusinhvien.aspx");
                    break;
                case 23:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTincongdoan.aspx");
                    break;
                case 24:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTindoanthanhnien.aspx");
                    break;
                case 25:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinhoisinhvien.aspx");
                    break;
                case 26:
                    Session["Role"] = qh;
                    Session["UserName"] = txtUserName.Text.Trim();
                    Response.Redirect("listTinthuvien.aspx");
                    break;
                default:
                    WebMsgBox.Show("Sai tên đăng nhập hay mật khẩu");
                    break;

            }

 
        }
    }
}
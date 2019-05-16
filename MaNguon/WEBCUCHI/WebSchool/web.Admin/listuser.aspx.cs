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
    public partial class listuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] == null) Response.Redirect("~/web.Admin/indexadmin.aspx");
            if (int.Parse(Session["Role"].ToString()) != 1) Response.Redirect("~/web.Admin/indexadmin.aspx");
 
            if (!IsPostBack)
            {
                pnList.Visible = true;
                pnCreate.Visible = false;
                BindGrid();
            }
        }

        public void BindGrid()
        {
            grdList.DataSource = AccountServices.db.Account_GroupUsers();
            grdList.DataBind();
        }

        protected void grdList_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            string UserName = e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                AccountServices.db.Account_Delete(UserName);
                BindGrid();
            }
        }

        protected void bt_new_Click(object sender, EventArgs e)
        {
            txtPassword.Text = "";
            txtUserName.Text = "";
            pnList.Visible = false;
            pnCreate.Visible = true;
        }

        protected void bt_Insert_Click(object sender, EventArgs e)
        {
            try
            {
                var obj = new AccountInfo();

                obj.Username = txtUserName.Text;

                obj.Password = StringClass.Encrypt(txtPassword.Text);
                obj.GroupUsers_ID = gdlGroupUsers.SelectedValue;
                if (testUsername() > 0)
                {
                    AccountServices.db.Account_Insert(obj);
                    BindGrid();
                    pnList.Visible = true;
                    pnCreate.Visible = false;
                }
                else {
                    txtUserName.Text = "";
                    WebMsgBox.Show("Tên đăng nhập đã tồn tại");
                }
 
            }
            catch (Exception ex)
            {
                WebMsgBox.Show("Lỗi trong lúc đăng kí" + ex.Message);
            }
        }

        public int testUsername()
        {
            DataTable dt = AccountServices.db.Account_GetByAll();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (txtUserName.Text.Equals(dt.Rows[i]["UserName"].ToString()))
                {
                    return 0;
                }
            }
            return 1;

        }
    }
}
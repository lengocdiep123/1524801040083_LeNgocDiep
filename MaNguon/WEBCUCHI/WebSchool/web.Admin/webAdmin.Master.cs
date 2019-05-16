using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSchool.web.Admin
{
    public partial class webAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lbXinchao.Text = "Xin chào, ";
                lbName.Text = Session["UserName"].ToString();
                if (int.Parse(Session["Role"].ToString()) == 1) lbt_Admin.Visible = true;
            }
        }

        protected void lbt_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/web.Admin/indexadmin.aspx");
        }

        protected void lbt_Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/web.Admin/listuser.aspx");
        }
    }
}
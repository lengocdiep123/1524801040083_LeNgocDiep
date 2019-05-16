using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSchool
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void timkiem_Click(object sender, EventArgs e)
        {
            
            string sChuoi = txtnd.Text;
            if (sChuoi == "" || sChuoi.Length < 3)
            {
                Console.Write("Vui lòng nhập từ khóa");
            }
            else
            {
                Response.Redirect("~/web.Truong/KQTK.aspx?tieude=" + sChuoi + "");
            }

        }
        //   protected void timkiem_Click(object sender, EventArgs e)
        //{
        //    string sChuoi = txtnd.Text;
        //    if (sChuoi == "" || sChuoi.Length < 3)
        //    {
        //        sChuoi = "Vui lòng nhập từ khóa";
        //    }
        //    else
        //    {
        //        Response.Redirect("~/web.Truong/KQTK.aspx?tieude=" + sChuoi + "");
        //    }
    }
}   
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebSchool
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application.Add("OnlineCount", 0);
            //Kiểm tra nếu chưa tồn tại file thì tạo file Count_Visited.txt
            if (!File.Exists(Server.MapPath("Count_Visited.txt")))
                File.WriteAllText(Server.MapPath("Count_Visited.txt"), "0");
            Application["Access"] = int.Parse(File.ReadAllText(Server.MapPath("Count_Visited.txt"))); 
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 12;
            //----------------OnlineCount--------------------------------
            int onlineVisit;
            if (Application["OnlineCount"] == null)
            {
                onlineVisit = 0;
            }
            else
            {
                onlineVisit = int.Parse(Application["OnlineCount"].ToString()) + 1;
                // khóa website
                Application.Lock();
            }

            //--------------All------------------------
            string path = Server.MapPath("~") + "\\Count_Visited.txt";
            Application["Access"] = (int)Application["Access"] + 1;
            File.WriteAllText(Server.MapPath("Count_Visited.txt"), Application["Access"].ToString()); 

            Application.Lock();
            Application["OnlineCount"] = onlineVisit;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["OnlineCount"] = int.Parse(Application["OnlineCount"].ToString()) - 1;
            string path = Server.MapPath("~") + "\\Count_Visited.txt";
            File.WriteAllText(path, Application["Access"].ToString());
            Session["Popup"] = null;

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
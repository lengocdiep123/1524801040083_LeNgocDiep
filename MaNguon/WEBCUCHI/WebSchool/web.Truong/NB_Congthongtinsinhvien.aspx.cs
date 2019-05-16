﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebSchool.BUS;
using WebSchool.Common;

namespace WebSchool.web.Truong
{
    public partial class NB_Congthongtinsinhvien : System.Web.UI.Page
    {
        HtmlHead headTag;

        protected void Page_Load(object sender, EventArgs e)
        {
            headTag = (HtmlHead)this.Header;
            if (!IsPostBack)
            {
                DataTable dttieude = TruongNoiBoServiecs.db.TruongNoiBo_GetByTop("", "ID=6", "");
                if (dttieude.Rows.Count > 0)
                {
                    lbchudetieude.Text = dttieude.Rows[0]["Chude"].ToString();
					headTag.Title = dttieude.Rows[0]["Chude"].ToString() + " - Trường Trung Cấp Nghề Củ Chi";
                }

                DataTable dt = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("", "IDChude=6 and dangtin=1", "ID desc");

                cltpage.PageSize = 12;
                cltpage.DataSource = dt.DefaultView;
                cltpage.BindToControl = dtlnews;
                dtlnews.DataSource = cltpage.DataSourcePaged;
                dtlnews.DataBind();

                pnlist.Visible = true;

            }
        }
        public bool checkVisible(string obj)
        {
            if (obj.Length > 0)
                return true;
            return false;
        }
    }
}
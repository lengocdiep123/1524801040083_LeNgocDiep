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

namespace WebSchool.web.Truong
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlHead headTag = (HtmlHead)this.Header;

            // Set the page title

            headTag.Title = "Trường Trung Cấp Nghề Củ Chi";
            if (!IsPostBack)
            {
                //Tin Truong
                DataTable dttruong = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("6", "IDChude=4 and dangtin=1", "ID desc");
                DataTable dtt1 = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("1", "IDChude=4 and dangtin=1", "ID desc");
                if (dttruong.Rows.Count > 0)
                {
                    if (checkVisible(dttruong.Rows[0]["anhdaidien"].ToString()))
                        imgtruong.ImageUrl = dttruong.Rows[0]["anhdaidien"].ToString();
                    
                    imgtruong.ToolTip = dttruong.Rows[0]["tieude"].ToString();
                    imgtruong.CommandArgument = dttruong.Rows[0]["ID"].ToString();
                    dtl1.DataSource = dtt1;
                    dtl1.DataBind();
                    dtltruong.DataSource = dttruong;
                    dtltruong.DataBind();
                }
                

                //Tin Tuyen sinh
                DataTable dtTS = TSTinServiecs.db.TSTintuc_GetByTop("3", "IDChude=5 AND dangtin=1", "ID desc");
                DataTable dtDaoTao = DaoTaoTinServiecs.db.DaoTaoTintuc_GetByTop("3", "IDChude=2 AND dangtin=1", "ID desc");
                DataTable dtGTVL = TSTinServiecs.db.TSTintuc_GetByTop("3", "IDChude=8 and dangtin=1", "ID desc");

                DateTime dateTS;
                DateTime dateDaotao;
                DateTime dateGTVL;
                if (dtTS.Rows.Count > 0)
                {
                    dateTS = DateTime.Parse(dtTS.Rows[0]["ngaysua"].ToString());
                }
                else
                {
                    dateTS = new DateTime(2012, 2, 12);
                }

                if (dtDaoTao.Rows.Count > 0)
                {
                    dateDaotao = DateTime.Parse(dtDaoTao.Rows[0]["ngaysua"].ToString());
                }
                else
                {
                    dateDaotao = new DateTime(2012, 2, 12);
                }

                if (dtGTVL.Rows.Count > 0)
                {
                    dateGTVL = DateTime.Parse(dtGTVL.Rows[0]["ngaysua"].ToString());
                }
                else
                {
                    dateGTVL = new DateTime(2012, 2, 12);
                }
                
                
                if (dateTS >= dateDaotao && dateTS >= dateGTVL)
                {
                    pnTopTS.Visible = true;
                    DataTable dtTopTS = TSTinServiecs.db.TSTintuc_GetByTop("1", "IDChude=5 AND dangtin=1", "ID desc");
                    if (dtTopTS.Rows.Count > 0)
                    {
                        if (checkVisible(dtTopTS.Rows[0]["anhdaidien"].ToString()))
                            imgTopTS.ImageUrl = dtTopTS.Rows[0]["anhdaidien"].ToString();

                        imgTopTS.ToolTip = dtTopTS.Rows[0]["tieude"].ToString();
                        imgTopTS.CommandArgument = dtTopTS.Rows[0]["ID"].ToString();
                        dtlTopTS.DataSource = dtTopTS;
                        dtlTopTS.DataBind();

                        if (dtTS.Rows.Count > 0)
                        {
                            dtlTS1.DataSource = dtTS;
                            dtlTS1.DataBind();
                        }
                        
                        if (dtDaoTao.Rows.Count > 0)
                        {
                            dtlDaoTao1.DataSource = dtDaoTao;
                            dtlDaoTao1.DataBind();
                        }

                        if (dtGTVL.Rows.Count > 0)
                        {
                            dtlGTVL1.DataSource = dtGTVL;
                            dtlGTVL1.DataBind();
                        }
                        
                    }
                }
                else if (dateDaotao >= dateGTVL)
                {
                    pnTopDaotao.Visible = true;
                    DataTable dtTopDaoTao = DaoTaoTinServiecs.db.DaoTaoTintuc_GetByTop("1", "IDChude=2 AND dangtin=1", "ID desc");
                    if (dtTopDaoTao.Rows.Count > 0)
                    {
                        if (checkVisible(dtTopDaoTao.Rows[0]["anhdaidien"].ToString()))
                            imgTopDaotao.ImageUrl = dtTopDaoTao.Rows[0]["anhdaidien"].ToString();

                        imgTopDaotao.ToolTip = dtTopDaoTao.Rows[0]["tieude"].ToString();
                        imgTopDaotao.CommandArgument = dtTopDaoTao.Rows[0]["ID"].ToString();
                        dtlTopDaotao.DataSource = dtTopDaoTao;
                        dtlTopDaotao.DataBind();

                        if (dtTS.Rows.Count > 0)
                        {
                            dtlTS2.DataSource = dtTS;
                            dtlTS2.DataBind();
                        }

                        if (dtDaoTao.Rows.Count > 0)
                        {
                            dtlDaoTao2.DataSource = dtDaoTao;
                            dtlDaoTao2.DataBind();
                        }

                        if (dtGTVL.Rows.Count > 0)
                        {
                            dtlGTVL2.DataSource = dtGTVL;
                            dtlGTVL2.DataBind();
                        }
                    }
                }
                else
                {
                    pnTopGTVL.Visible = true;
                    DataTable dtTopGTVL = TSTinServiecs.db.TSTintuc_GetByTop("1", "IDChude=8 and dangtin=1", "ID desc");
                    if (dtTopGTVL.Rows.Count > 0)
                    {
                        if (checkVisible(dtTopGTVL.Rows[0]["anhdaidien"].ToString()))
                            imgTopGTVL.ImageUrl = dtTopGTVL.Rows[0]["anhdaidien"].ToString();

                        imgTopGTVL.ToolTip = dtTopGTVL.Rows[0]["tieude"].ToString();
                        imgTopGTVL.CommandArgument = dtTopGTVL.Rows[0]["ID"].ToString();
                       
                        dtlTopGTVL.DataSource = dtTopGTVL;
                        dtlTopGTVL.DataBind();

                        if (dtTS.Rows.Count > 0)
                        {
                            dtlTS3.DataSource = dtTS;
                            dtlTS3.DataBind();
                        }

                        if (dtDaoTao.Rows.Count > 0)
                        {
                            dtlDaoTao3.DataSource = dtDaoTao;
                            dtlDaoTao3.DataBind();
                        }

                        if (dtGTVL.Rows.Count > 0)
                        {
                            dtlGTVL3.DataSource = dtGTVL;
                            dtlGTVL3.DataBind();
                        }
                    }
                }

                //Tin Sinh vien
                DataTable dt = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("6", "IDChude=6 and dangtin=1", "ID desc");
                DataTable dtt3 = TruongNoiBoTinServiecs.db.TruongNoiBoTintuc_GetByTop("1", "IDChude=6 and dangtin=1", "ID desc");
                if (dt.Rows.Count > 0)
                {
                    if (checkVisible(dt.Rows[0]["anhdaidien"].ToString()))
                        imgsinhvien.ImageUrl = dt.Rows[0]["anhdaidien"].ToString();

                    imgsinhvien.ToolTip = dt.Rows[0]["tieude"].ToString();
                    imgsinhvien.CommandArgument = dt.Rows[0]["ID"].ToString();
                    dtl3.DataSource = dtt3;
                    dtl3.DataBind();
                    dtlsinhvien.DataSource = dt;
                    dtlsinhvien.DataBind();
                }
                
            }
        }

        public bool checkVisible(string obj)
        {
            if (obj.Length > 0)
                return true;
            return false;
        }

        public string decreaseTitle(string obj)
        {
            string str = "";
            if (obj.Length > 68)
            {
                str = obj.Remove(68);
                str = String.Concat(str.Remove(str.LastIndexOf(' ')), "...");
            }
            else
                str = obj;
            return str;
        }

        public string decreaseTitle01(string obj)
        {
            string str = "";
            if (obj.Length > 112)
            {
                str = obj.Remove(112);
                str = String.Concat(str.Remove(str.LastIndexOf(' ')), "...");
            }
            else
                str = obj;
            return str;
        }
        //Hoat dong cua truong
        protected void truongimg_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("NB_Congthongtin.aspx?truong=", ID));
        }
        
        // Hoat dong sinh vien
        protected void imgsinhvien_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("NB_Congthongtin.aspx?sinhvien=", ID));
        }

        //Tuyen sinh - Dao tao - Gioi thieu viec lam
        protected void imgTopTS_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", ID));
        }

        protected void imgTopDaotao_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("~/web.PhongDaotao/DaoTaoXemchitiettin.aspx?ID=", ID));
        }

        protected void imgTopGTVL_Command(object sender, CommandEventArgs e)
        {
            string ID = e.CommandArgument.ToString();
            Response.Redirect(String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", ID));
        }
    }
}
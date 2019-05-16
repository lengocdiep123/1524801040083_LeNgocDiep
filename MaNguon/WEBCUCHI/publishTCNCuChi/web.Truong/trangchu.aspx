<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="WebSchool.web.Truong.trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<article class="art-post art-article">
    <div class="art-postmetadataheader">
        <h4 class="art-postheader">TIN TỨC TRƯỜNG</h4>

    </div>
                                                
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout layout-item-0">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-2" style="width: 100%" >
                    
                    <div class="image-caption-wrapper">
                        <asp:DataList ID="dtl1" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                             <ItemTemplate>
                                 <ul>
                                    <li><span style="font-weight: bold; ">
                                        <asp:HyperLink ID="hlnewstruong" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?truong=", Eval("ID")) %>' Text='<%#decreaseTitle01(Eval("tieude").ToString()) %>'></asp:HyperLink></span>

                                    </li>
                                </ul>
                            </ItemTemplate>
                       </asp:DataList>
                        

                    </div>
                   
                    <div class="image-caption-wrapper" style="float: left; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 12px;">
                        <asp:ImageButton ID="imgtruong" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" OnCommand="truongimg_Command" width="200" height="150"/>
                    </div>
                    
                    <asp:DataList ID="dtltruong" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                        <ItemTemplate>
                           <ul style="margin-top: 0px; margin-bottom: -24px; line-height: 100%;">
                                <li>
                                 <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailtruong" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?truong=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                </li>
                           </ul>
                       </ItemTemplate>
                              
                    </asp:DataList>
                    
                </div>
            </div>
            <div class="art-content-layout">
                <div class="art-content-layout-row">
                    <div class="art-layout-cell layout-item-0" style="width: 100%" >
                        <p style="text-align:right;"><a href="NB_Congthongtintruong.aspx" class="art-button">Xem nhiều hơn</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Het tin tuc truong--%>

    <div class="art-postmetadataheader">
        <h4 class="art-postheader">TUYỂN SINH - ĐÀO TẠO - GIỚI THIỆU VIỆC LÀM</h4>

    </div>
                                                
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout layout-item-0">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-2" style="width: 100%" >
                    
                    <asp:Panel ID="pnTopTS" runat="server" Visible="False">
                        <div class="image-caption-wrapper">
                            <asp:DataList ID="dtlTopTS" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                                <ItemTemplate>
                                    <ul>
                                        <li><span style="font-weight: bold; ">
                                            <asp:HyperLink ID="hlnewstuyensinh" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle01(Eval("tieude").ToString()) %>'></asp:HyperLink></span>

                                        </li>
                                    </ul>
                                </ItemTemplate>
                            </asp:DataList>
                        

                          </div>
                   
                        <div class="image-caption-wrapper" style="float: left; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 12px;">
                            <asp:ImageButton ID="imgTopTS" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" width="200" height="150" OnCommand="imgTopTS_Command"/>
                        </div>
                        <asp:DataList ID="dtlTS1" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailTS" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </asp:DataList>
                        <br />
                        <asp:DataList ID="dtlDaoTao1" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailDaotao" runat="server" NavigateUrl='<%# String.Concat("~/web.PhongDaotao/DaoTaoXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                     </li>
                                 </ul>
                            </ItemTemplate>
                              
                        </asp:DataList>
                        <br />

                        <asp:DataList ID="dtlGTVL1" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailGTVL" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                     </li>
                                 </ul>
                            </ItemTemplate>
                              
                        </asp:DataList>
                    </asp:Panel>
                    <asp:Panel ID="pnTopDaotao" runat="server" Visible="False">
						<div class="image-caption-wrapper">
                            <asp:DataList ID="dtlTopDaotao" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                                <ItemTemplate>
                                    <ul>
                                        <li><span style="font-weight: bold; ">
                                            <asp:HyperLink ID="hlnewsDaotao" runat="server" NavigateUrl='<%# String.Concat("~/web.PhongDaotao/DaoTaoXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink>

                                        </li>
                                    </ul>
                                </ItemTemplate>
                            </asp:DataList>
                        

                          </div>
                   
                        <div class="image-caption-wrapper" style="float: left; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 12px;">
                            <asp:ImageButton ID="imgTopDaotao" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" width="200" height="150" OnCommand="imgTopDaotao_Command"/>
                        </div>
                        
                        <asp:DataList ID="dtlDaoTao2" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailDaotao" runat="server" NavigateUrl='<%# String.Concat("~/web.PhongDaotao/DaoTaoXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                     </li>
                                 </ul>
                            </ItemTemplate>
                              
                        </asp:DataList>
                        <br />
						
						<asp:DataList ID="dtlTS2" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailTS" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </asp:DataList>
                        <br />
						
                        <asp:DataList ID="dtlGTVL2" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailGTVL" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                     </li>
                                 </ul>
                            </ItemTemplate>
                              
                        </asp:DataList>
                    </asp:Panel>

                    <asp:Panel ID="pnTopGTVL" runat="server" Visible="False">
						<div class="image-caption-wrapper">
                            <asp:DataList ID="dtlTopGTVL" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                                <ItemTemplate>
                                    <ul>
                                        <li><span style="font-weight: bold; ">
                                            <asp:HyperLink ID="hlnewsGTVL" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink>

                                        </li>
                                    </ul>
                                </ItemTemplate>
                            </asp:DataList>
                        

                          </div>
                   
                        <div class="image-caption-wrapper" style="float: left; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 12px;">
                            <asp:ImageButton ID="imgTopGTVL" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" width="200" height="150" OnCommand="imgTopGTVL_Command"/>
                        </div>
                        <asp:DataList ID="dtlGTVL3" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailGTVL" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                     </li>
                                 </ul>
                            </ItemTemplate>
                              
                        </asp:DataList>
						<br/>
						
                        <asp:DataList ID="dtlDaoTao3" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailDaotao" runat="server" NavigateUrl='<%# String.Concat("~/web.PhongDaotao/DaoTaoXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                     </li>
                                 </ul>
                            </ItemTemplate>
                              
                        </asp:DataList>
                        <br />
						
						<asp:DataList ID="dtlTS3" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                            <ItemTemplate>
                                <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                    <li>
                                        <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailTS" runat="server" NavigateUrl='<%# String.Concat("~/web.Tuyensinh/TSXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                    </li>
                                </ul>
                            </ItemTemplate>
                        </asp:DataList>
                        
                    </asp:Panel>
                </div>
            </div>
            <div class="art-content-layout">
                <div class="art-content-layout-row">
                    <div class="art-layout-cell layout-item-0" style="width: 100%" >
                        <p style="text-align:right;"><a href="../web.Tuyensinh/Tuyensinh.aspx" class="art-button">Xem nhiều hơn</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--Het tuyen sinh vao dao tao--%>

    <div class="art-postmetadataheader">
        <h4 class="art-postheader">HOẠT ĐỘNG SINH VIÊN</h4>

    </div>
                                                
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout layout-item-0">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-2" style="width: 100%" >
                    
                    <div class="image-caption-wrapper">
                        <asp:DataList ID="dtl3" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                             <ItemTemplate>
                                 <ul>
                                    <li><span style="font-weight: bold; ">
                                        <asp:HyperLink ID="hlnewssinhvien" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?sinhvien=", Eval("ID")) %>' Text='<%#decreaseTitle01(Eval("tieude").ToString()) %>'></asp:HyperLink></span>

                                    </li>
                                </ul>
                            </ItemTemplate>
                       </asp:DataList>
                        

                    </div>
                   
                    <div class="image-caption-wrapper" style="float: left; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 12px;">
                        <asp:ImageButton ID="imgsinhvien" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" width="200" height="150" OnCommand="imgsinhvien_Command"/>
                    </div>
                    
                    <asp:DataList ID="dtlsinhvien" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                        <ItemTemplate>
                           <ul style="margin-top: 0px; margin-bottom: -24px; line-height: 100%;">
                                <li>
                                 <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailsinhvien" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?sinhvien=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                </li>
                           </ul>
                       </ItemTemplate>
                              
                    </asp:DataList>
                    
                </div>
            </div>
            <div class="art-content-layout">
                <div class="art-content-layout-row">
                    <div class="art-layout-cell layout-item-0" style="width: 100%" >
                        <p style="text-align:right;"><a href="NB_Congthongtinsinhvien.aspx" class="art-button">Xem nhiều hơn</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


</article>
</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/web.PhongCongtacHSSV/webPhongcongtacHSSV.Master" AutoEventWireup="true" CodeBehind="PhongcongtacHSSV.aspx.cs" Inherits="WebSchool.web.PhongCongtacHSSV.PhongcongtacHSSV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <article class="art-post art-article">
    <div class="art-postmetadataheader">
        <h4 class="art-postheader">Thông tin P.CT-HSSV</h4>
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
                                        <asp:HyperLink ID="hlnewsHSSV" runat="server" NavigateUrl='<%# String.Concat("HSSVXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle01(Eval("tieude").ToString()) %>'></asp:HyperLink></span>

                                    </li>
                                </ul>
                            </ItemTemplate>
                       </asp:DataList>
                        

                    </div>
                   
                    <div class="image-caption-wrapper" style="float: left; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 12px;">
                        <asp:ImageButton ID="imgHSSV" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" OnCommand="imgHSSV_Command" width="200" height="150"/>
                    </div>
                    
                    <asp:DataList ID="dtlHSSV" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                         
                        <ItemTemplate>
                           <ul style="margin-top: 0.5px; margin-bottom: -24px; line-height: 100%;">
                                <li>
                                 <span style="font-size: 14px; color: #000000;">   <asp:HyperLink ID="hlnewsdetailHSSV" runat="server" NavigateUrl='<%# String.Concat("HSSVXemchitiettin.aspx?ID=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>'></asp:HyperLink></span>
                                </li>
                           </ul>
                       </ItemTemplate>
                              
                    </asp:DataList>
                    
                </div>
            </div>
            <div class="art-content-layout">
                <div class="art-content-layout-row">
                    <div class="art-layout-cell layout-item-0" style="width: 100%" >
                        <p style="text-align:right;"><a href="HSSV_Thongtin.aspx" class="art-button">Xem nhiều hơn</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</article>

</asp:Content>
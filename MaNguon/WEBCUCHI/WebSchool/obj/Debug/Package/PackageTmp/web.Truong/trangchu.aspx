<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="WebSchool.web.Truong.trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<article class="art-post art-article">
    <div class="art-postmetadataheader">
        <h2 class="art-postheader">Tin tức trường</h2>
    </div>
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-1" style="width: 100%">
                    
                    <div class="image-caption-wrapper" style="width: 60%; float: left">
                        <asp:ImageButton ID="imgtruong" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" Width="360px" OnCommand="truongimg_Command"/>
                        
                    </div>
                    <h3></h3>
                    <asp:DataList ID="dtltruong" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlnewsdetailtruong" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?truong=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>' Font-Bold="true"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</article>

    <article class="art-post art-article">
    <div class="art-postmetadataheader">
        <h2 class="art-postheader">Tuyển sinh - đào tạo</h2>
    </div>
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-1" style="width: 100%">
                   <div class="image-caption-wrapper" style="width: 60%; float: left">
                        <asp:ImageButton ID="imgtuyensinh" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" Width="360px" OnCommand="truongimg_Command"/>
                        
                    </div>
                    <h3></h3>
                    <asp:DataList ID="dtltuyensinh" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlnewsdetailtuyensinh" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?tuyensinh=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>' Font-Bold="true"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</article>

        <article class="art-post art-article">
    <div class="art-postmetadataheader">
        <h2 class="art-postheader">Thông báo - hoạt động sinh viên</h2>
    </div>
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-1" style="width: 100%">
                   <div class="image-caption-wrapper" style="width: 60%; float: left">
                        <asp:ImageButton ID="imgsinhvien" runat="server" ImageUrl="~/web.Truong/images/Thongbao.jpg" Width="360px" OnCommand="truongimg_Command"/>
                        
                    </div>
                    <h3></h3>
                    <asp:DataList ID="dtlsinhvien" runat="server" ShowFooter="False" ShowHeader="False" RepeatLayout="Flow">
                        <ItemTemplate>
                            <asp:HyperLink ID="hlnewsdetailsinhvien" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?sinhvien=", Eval("ID")) %>' Text='<%#decreaseTitle(Eval("tieude").ToString()) %>' Font-Bold="true"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</article>
</asp:Content>

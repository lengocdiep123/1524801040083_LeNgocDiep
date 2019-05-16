<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="GT_Lichsuphattrien.aspx.cs" Inherits="WebSchool.web.Truong.GT_Lichsuphattrien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <article class="art-post art-article">
        <div class="art-postmetadataheader">
            <h2 class="art-postheader">LỊCH SỬ PHÁT TRIỂN </h2>
                                              
        </div>
        <div class="art-postcontent art-postcontent-0 clearfix">
            <asp:DataList ID="DataList1" runat="server" Width="100%">
                <ItemTemplate>
                    <p style="padding:12px; color:darkgray" >Đăng ngày&nbsp<asp:Label ID="lbngaysua" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaydang").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaydang").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label></p>
                    <%--<p><strong><asp:Label ID="lbtomtat" runat="server" Text='<%# Eval("tomtat") %>' Visible='<%#checkVisible(Eval("tomtat").ToString())%>' ></asp:Label></strong></p>--%>
                    <p style="text-align:center"><asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("anhdaidien")%>' Visible='<%#checkVisible(Eval("anhdaidien").ToString())%>' Width="678px" /></p>
                    <asp:Label ID="lbnoidung" runat="server" Text='<%# Eval("noidung") %>' ></asp:Label>
                    <p><br /></p>
                    <p style="text-align:right; color:darkgray" >Chỉnh sửa lần cuối vào&nbsp<asp:Label ID="Label1" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaysua").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaysua").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label></p>
                </ItemTemplate>
            </asp:DataList>
            
        </div>
    </article>
</asp:Content>

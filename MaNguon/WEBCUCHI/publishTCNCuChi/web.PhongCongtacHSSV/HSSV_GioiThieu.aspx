<%@ Page Title="" Language="C#" MasterPageFile="~/web.PhongCongtacHSSV/webPhongcongtacHSSV.Master" AutoEventWireup="true" CodeBehind="HSSV_GioiThieu.aspx.cs" Inherits="WebSchool.web.PhongCongtacHSSV.HSSV_GioiThieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <article class="art-post art-article">
        <div class="art-postmetadataheader">
            <h4 class="art-postheader">Giớt thiệu</h4>
                                              
        </div>
        <div class="art-postcontent art-postcontent-0 clearfix">
            <asp:DataList ID="DataList1" runat="server" Width="100%">
                <ItemTemplate>
                    <p style="padding:15px; color:darkgray" >Đăng ngày&nbsp<asp:Label ID="lbngaysua" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaydang").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaydang").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label>
                    <asp:Label ID="lbtomtat" runat="server" Text='<%# Eval("tomtat") %>' Visible='<%#checkVisible(Eval("tomtat").ToString())%>' ></asp:Label></strong></p>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("anhdaidien")%>' Visible='<%#checkVisible(Eval("anhdaidien").ToString())%>' Width="678px" />
                    <asp:Label ID="lbnoidung" runat="server" Text='<%# Eval("noidung") %>' ></asp:Label></br/>
                    <p><br /></p>
                    <p style="text-align:right; color:darkgray" >Chỉnh sửa lần cuối vào&nbsp<asp:Label ID="Label1" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaysua").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaysua").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label></p>
                </ItemTemplate>
            </asp:DataList>
            
        </div>
    </article>
</asp:Content>

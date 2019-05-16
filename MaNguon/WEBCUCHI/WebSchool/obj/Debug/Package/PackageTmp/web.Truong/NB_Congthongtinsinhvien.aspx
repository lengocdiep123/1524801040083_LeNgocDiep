<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="NB_Congthongtinsinhvien.aspx.cs" Inherits="WebSchool.web.Truong.NB_Congthongtinsinhvien" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <article class="art-post art-article">
        <div class="art-postmetadataheader">
            <h2 class="art-postheader"><asp:Label ID="lbchudetieude" runat="server"></asp:Label></h2>
                                              
        </div>
        <div class="art-postcontent art-postcontent-0 clearfix">
            <asp:Panel ID="pnlist" runat="server">
                <asp:DataList ID="dtlnews" runat="server" Width="100%" GridLines="Vertical">
                    <ItemTemplate>
                        <p  style="padding:1px 4px 1px 12px"><asp:HyperLink ID="hlnewsdetail" runat="server" NavigateUrl='<%# String.Concat("NB_Congthongtin.aspx?sinhvien=", Eval("ID")) %>' Text='<%# Eval("tieude") %>' ForeColor="#0066FF" Font-Size="X-Large"></asp:HyperLink></p>
                        <p style="padding:1px 4px 1px 12px" >Đăng ngày&nbsp<asp:Label ID="lbngaydanglist" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaydang").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaydang").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label></p>
                        <p  style="padding:1px 4px 1px 12px"><strong><asp:Label ID="lbtomtat" runat="server" Text='<%# Eval("tomtat") %>' Visible='<%#checkVisible(Eval("tomtat").ToString())%>' ></asp:Label></strong></p>
                                          
                        <p><br /></p>
                        <%--<p style="text-align:right; color:darkgray" >Chỉnh sửa lần cuối vào&nbsp<asp:Label ID="lbngaysualist" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaysua").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaysua").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label></p>--%>
                    </ItemTemplate>
                </asp:DataList>
                <p><br /></p>
                <cc1:CollectionPager ID="cltpage" runat="server" 
                    FirstText="Đầu" 
                    BackText="<<  Trước&amp;nbsp;" 
                    LabelText=""
                    LastText="Cuối"
                    NextText="&amp;nbsp;Sau  >>"
                    ShowFirstLast="true"
                
                   
                    BackNextLocation="Split"
                    PageNumbersDisplay="Numbers"
                    ResultsLocation="None"
                    BackNextDisplay="Buttons">
                    
                </cc1:CollectionPager>
            </asp:Panel>
           
        </div>
    </article>
</asp:Content>




<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="Khoa-TT_KhoasuphamGDN.aspx.cs" Inherits="WebSchool.web.Truong.Khoa_TT_KhoasuphamGDN" %>

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
                        <p  style="padding:1px 4px 1px 12px"><asp:LinkButton ID="lbtnews" runat="server" ForeColor="#0066FF" Font-Size="X-Large" CommandArgument='<%# Eval("ID")%>' Text='<%# Eval("tieude") %>' OnCommand="lbtnews_Command"></asp:LinkButton></p>
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
            <asp:Panel ID="pndetail" runat="server">
                <asp:DataList ID="dtldetail" runat="server" Width="100%" OnItemDataBound="dtldetail_ItemDataBound">
                    <ItemTemplate>
                        <table>
                            <tbody>
                                <caption>
                                    <td style="border:none; text-align:justify">
                                        <p style="padding:1px 4px 1px 12px">
                                            <asp:Label ID="lbnews" runat="server" Font-Size="X-Large" ForeColor="#0066FF" Text='<%# Eval("tieude") %>'></asp:Label>
                                        </p>
                                        <p style="padding:1px 4px 1px 12px; color:darkgray">
                                            Đăng ngày&nbsp;<asp:Label ID="lbngaysua" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaydang").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaydang").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label>
                                        </p>
                                    </td>
                                </caption>
                                <tr>
                                    <td style="border:none; text-align:justify">
                                        <p style="padding: 1px 4px 1px 12px;">
                                            <asp:Label ID="lbtomtat" runat="server" Text='<%# Eval("tomtat") %>' Visible='<%#checkVisible(Eval("tomtat").ToString())%>' Font-Bold="true" Font-Size="Large"></asp:Label></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" border: none; text-align:center">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("anhdaidien")%>' Visible='<%#checkVisible(Eval("anhdaidien").ToString())%>' Width="70%" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" padding-left: 0.3cm; padding-right: 0.3cm; border: none; text-align: justify">
                                        <asp:Label ID="lbnoidung" runat="server" Text='<%# Eval("noidung") %>' Font-Size="Large"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" border:none">
                                        <asp:Label ID="lbattachfile" runat="server" Text="File đính kèm:" Visible="false" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" border:none">
    
                                        <asp:DataList ID="dtlfile" runat="server">
                                            <ItemTemplate>
                                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("noidung") %>'></asp:Label>
                                                &nbsp;<asp:LinkButton ID="lbtlinkdownload" runat="server" CommandArgument='<%# Eval("ID") %>' Text='<%# "Tải về" %>' OnCommand="lbtlinkdownload_Command"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    
    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border-top:1px solid darkgray; border-bottom:none; border-left:none; border-right:none; padding-right:0.5cm">
                                        <p style="text-align:right; color:darkgray" >Chỉnh sửa lần cuối vào&nbsp<asp:Label ID="Label1" runat="server" Text='<%# WebSchool.Common.DateTimeClass.DayOfWeek(Eval("ngaysua").ToString())+ " " + WebSchool.Common.DateTimeClass.ConvertDateTime(Eval("ngaysua").ToString(), "dd/MM/yyyy hh:mm") %>'></asp:Label></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        
                        <p><br /></p>
                        
                        <p style="padding: 10px 10px 10px 10px; font-style: italic">
                            <asp:LinkButton ID="lbtback" runat="server" Text="Trở về" ForeColor="#0066ff" OnClick="lbtback_Click"></asp:LinkButton></p>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </div>
    </article>
</asp:Content>



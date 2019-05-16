<%@ Page Title="" Language="C#" MasterPageFile="~/web.Admin/webAdmin.Master" AutoEventWireup="true" CodeBehind="doimatkhau.aspx.cs" Inherits="WebSchool.web.Admin.doimatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="art-content-layout">
            <div class="art-content-layout-row">
             <div class="art-layout-cell art-sidebar1"><div class="art-vmenublock clearfix">
                <div class="art-vmenublockcontent">
                    <ul class="art-vmenu">
                        <li><a href="indexadmin.aspx" class="active">ADMIN</a>
 
                        </li>
                    </ul>
                
                </div></div></div>
            <div class="art-layout-cell art-content"><article class="art-post art-article">
                <h2 class="art-postheader">ĐỔI MẬT KHẨU</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <h3>Tài khoản: &nbsp <asp:Label ID="lbAccount" runat="server"></asp:Label></h3>
                        <p style="padding-left: 40px;"><span style="font-weight: bold; font-size: 14px; color: #7D2B03;">Mật khẩu cũ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="txtPasswordold" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không bỏ trống" ControlToValidate="txtPasswordold" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                        <p style="padding-left: 40px;"><span style="font-weight: bold; font-size: 14px; color: #7D2B03;">Nhập mật khẩu mới:</span><span style="color: #7D2B03;">&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:TextBox ID="txtPasswordnew" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không bỏ trống" ControlToValidate="txtPasswordnew" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                        <p style="padding-left: 40px;"><span style="font-weight: bold; color: #7D2B03;">Nhập lại mật khẩu mới:</span> &nbsp;<asp:TextBox ID="txtPasswordenter" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không bỏ trống" ControlToValidate="txtPasswordenter" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Nhập lại mật khẩu chưa khớp" ControlToCompare="txtPasswordnew" ControlToValidate="txtPasswordenter" ForeColor="Red"></asp:CompareValidator>
                        </p>
                        <p style="padding-left: 100px;">&nbsp;<a><asp:Button ID="Button1" runat="server" Text="Đổi mật khẩu" CssClass="art-button"/></a></p>

                    </div>

            </article></div>
           </div>
         </div>
</asp:Content>

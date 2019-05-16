<%@ Page Title="" Language="C#" MasterPageFile="~/web.Admin/webAdmin.Master" AutoEventWireup="true" CodeBehind="indexadmin.aspx.cs" Inherits="WebSchool.web.Admin.indexadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="art-content-layout">
            <div class="art-content-layout-row">
             <div class="art-layout-cell art-sidebar1"><div class="art-vmenublock clearfix">

            </div></div>
            <div class="art-layout-cell art-content"><article class="art-post art-article">
                <h2 class="art-postheader">ĐĂNG NHẬP</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <p><span style="font-weight: bold; font-size: 14px; color: #7D2B03;">Tên đăng nhập:</span><span style="color: #7D2B03;">&nbsp;</span>
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không bỏ trống" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>

                        </p>
                        <p style="padding-left: 40px;"><span style="font-weight: bold; color: #7D2B03;">Mật khẩu:</span> &nbsp;
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không bỏ trống" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>

                        </p>
                        <p style="padding-left: 100px; margin-top: 6px;"><span style="color: rgb(54, 64, 73); line-height: 16px;">&nbsp;
                        <asp:CheckBox ID="ckblogin" runat="server" /><span style="font-size: 14px;">Nhớ tài khoản đăng nhập</span></span><br/></p>
                        <p style="padding-left: 100px;">&nbsp;<asp:Button ID="bt_login" runat="server" OnClick="bt_login_Click" CssClass="art-button" Text="Đăng nhập" /></p>

                    </div>

            </article></div>
           </div>
         </div>

</asp:Content>

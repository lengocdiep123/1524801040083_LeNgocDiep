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

                        <table class="art-article" style="width: 100%; ">
                            <tbody>
                                <tr>
                                    <td style="width: 14%; ">
                                        <h3>Tài khoản:</h3>
                                    </td>
                                    <td style="width: 50%; " >
                                        <h3><asp:Label ID="lbAccount" runat="server"></asp:Label></h3>
                                    </td>
                               </tr>
                                <tr>
                                    <td style="width: 14%; text-align:end; padding-top:8px">
                                        Mật khẩu cũ:
                                    </td>
                                    <td style="width: 50%; " >
                                        <asp:TextBox ID="txtPasswordold" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không bỏ trống" ControlToValidate="txtPasswordold" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                               </tr>
                              <tr>
                                    <td style="width: 14%; text-align:end; padding-top:8px">
                                        Nhập mật khẩu mới:
                                    </td>
                                    <td style="width: 50%; " >
                                        <asp:TextBox ID="txtPasswordnew" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không bỏ trống" ControlToValidate="txtPasswordnew" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                               </tr>
                                <tr>
                                    <td style="width: 14%; text-align:end; padding-top:8px">
                                        Nhập lại mật khẩu mới:
                                    </td>
                                    <td style="width: 50%; " >
                                        <asp:TextBox ID="txtPasswordenter" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không bỏ trống" ControlToValidate="txtPasswordenter" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Nhập lại mật khẩu chưa khớp" ControlToCompare="txtPasswordnew" ControlToValidate="txtPasswordenter" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                               </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="bt_changePassWord" runat="server" Text="Đổi mật khẩu" CssClass="art-button" OnClick="bt_changePassWord_Click"/>&nbsp
                                        <input id="Button2" type="button" value="Hủy" onclick = "history.back()"  class="art-button" />
                                    </td>
                                </tr>
                           </tbody>
                        </table>

                        
                        <p style="padding-left: 100px;"><a></a>
                            
                        </p>

                    </div>

            </article></div>
           </div>
         </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/web.Tuyensinh/web.tuyensinh.Master" AutoEventWireup="true" CodeBehind="TS_Dangkitructuyen.aspx.cs" Inherits="WebSchool.web.Tuyensinh.TS_Dangkitructuyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      <article class="art-post art-article">
        <div class="art-postmetadataheader">
            <h4 class="art-postheader">ĐĂNG KÝ TRỰC TUYẾN</h4>
                                              
        </div>
        <div class="art-postcontent art-postcontent-0 clearfix">
            
            <asp:Panel ID="pnRegister" runat="server">
                <table style="margin: 2px; width:100%; vertical-align: middle; color:black">
                    <tbody>
                        <tr>
                            <td colspan="2" style="width:100%; color:black">
                               <b> 1. Hãy khai báo thông tin cá nhân của bạn:</b>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right; color:black">
                                Họ tên (gõ Tiếng Việt có dấu)(*):
                            </td>
                            <td style="width:75%">
                               <asp:TextBox ID="txtHoten" runat="server" Height="100%"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng nhập họ tên" ForeColor="Red" ControlToValidate="txtHoten"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                         <tr>
                            <td style="width:35%; text-align:right; color:black">
                                Ngày, tháng, năm, sinh(*):
                            </td>
                            <td style="width:75%">
                                <p><asp:TextBox ID="txtNgaysinh" runat="server" TextMode="Date"></asp:TextBox></p>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng nhập ngày sinh" ForeColor="Red" ControlToValidate="txtNgaysinh"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                          <tr>
                            <td style="width:35%; text-align:right; color:black">
                                Hộ khẩu thường trú(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtHokhau" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui lòng nhập hộ khẩu thường trú" ForeColor="Red" ControlToValidate="txtHokhau"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                          <tr>
                            <td style="width:35%; text-align:right; color:black; vertical-align: middle;">
                                Điện thoại(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtDienthoai" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Vui lòng nhập điện thoại" ForeColor="Red" ControlToValidate="txtDienthoai"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Bạn vui lòng nhập 10 hoặc 11 số" ForeColor="Red" ControlToValidate="txtDienthoai" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                          <tr>
                            <td style="width:35%; text-align:right; color:black; vertical-align: middle;">
                                Số CMND(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtCMND" runat="server" ></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Vui lòng nhập chứng minh nhân dân" ForeColor="Red" ControlToValidate="txtCMND"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Bạn vui lòng nhập số" ForeColor="Red" ControlToValidate="txtCMND" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                          <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Địa chỉ Email:
                            </td>
                            <td style="width:75%">
                               <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Bạn vui lòng nhập địa chỉ Email" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                        <td colspan="2" style="width:100%; color:black">
                               <b> 2. Chúng tôi thông báo kết quả tuyển sinh cho bạn theo địa chỉ nào?</b>
                            </td>

                        </tr>
                          <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Họ và tên người nhận thư(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtHotennhanthu" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Vui lòng nhập họ tên" ForeColor="Red" ControlToValidate="txtHotennhanthu"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                            <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Địa chỉ nhận thư (Ghi rõ thôn, xóm - xã, phường - quận, huyện - tỉnh, TP)(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtDiachinhanthu" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Vui lòng nhập địa chỉ" ForeColor="Red" ControlToValidate="txtDiachinhanthu"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Điện thoại:(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtDienthoainhanthu" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Vui lòng nhập điện thoại" ForeColor="Red" ControlToValidate="txtDienthoainhanthu"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Bạn vui lòng nhập số" ForeColor="Red" ControlToValidate="txtDienthoainhanthu" ValidationExpression="^\d+"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                          <td colspan="2" style="width:100%; color:black">
                               <b> 3. Hiện tại bạn đã tốt nghiệp THPT hay THCS?</b>
                            </td>

                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Đã tốt nghiệp(*):
                            </td>
                            <td style="width:75%">
                               <p> <asp:DropDownList ID="ddlTotnghiep" runat="server" Width="58%">
                                    <asp:ListItem Value="1">THPT</asp:ListItem>
                                    <asp:ListItem Value="2">THCS</asp:ListItem>
                                </asp:DropDownList></p>
                            </td>
                        </tr>
                         <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Năm tốt nghiệp(*):
                            </td>
                            <td style="width:75%">
                                <asp:TextBox ID="txtNamtotnghiep" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Vui lòng nhập năm tốt nghiệp" ForeColor="Red" ControlToValidate="txtNamtotnghiep"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Bạn vui lòng nhập 4 số" ForeColor="Red" ControlToValidate="txtNamtotnghiep" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                            <tr>
                          <td colspan="2" style="width:100%; color:black">
                               <b> 4. Nguyện vọng của bạn là gì?</b>
                            </td>

                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Nguyện vọng 1(*):
                            </td>
                            <td style="width:75%">
                                <p><asp:DropDownList ID="ddlNV01" runat="server" Width="68%" OnSelectedIndexChanged="ddlNV01_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="0">Chọn nguyện vọng 1</asp:ListItem>    
                                        <asp:ListItem Value="1">Cao đẳng</asp:ListItem>
                                        <asp:ListItem Value="2">Trung cấp</asp:ListItem>
                                   </asp:DropDownList></p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right">
                               
                            </td>
                            <td style="width:75%">
                               <asp:DropDownList ID="ddlNV01Nganh" runat="server" Width="68%"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Vui lòng chọn ngành học" ControlToValidate="ddlNV01Nganh" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                                             <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Nguyện vọng 2:
                            </td>
                            <td style="width:75%">
                                <p><asp:DropDownList ID="ddlNV02" runat="server" Width="68%" OnSelectedIndexChanged="ddlNV02_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="0">Chọn nguyện vọng 2</asp:ListItem>    
                                        <asp:ListItem Value="1">Cao đẳng</asp:ListItem>
                                        <asp:ListItem Value="2">Trung cấp</asp:ListItem>
                                   </asp:DropDownList></p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right">
                               
                            </td>
                            <td style="width:75%">
                                <asp:DropDownList ID="ddlNV02Nganh" runat="server" Width="68%"></asp:DropDownList>
                            </td>
                        </tr>
                                             <tr>
                            <td style="width:35%; text-align:right; color:black ;vertical-align: middle;">
                                Nguyện vọng 3:
                            </td>
                            <td style="width:75%">
                                <p><asp:DropDownList ID="ddlNV03" runat="server" Width="68%" OnSelectedIndexChanged="ddlNV03_SelectedIndexChanged" AutoPostBack="true">
                                        <asp:ListItem Value="0">Chọn nguyện vọng 3</asp:ListItem>    
                                        <asp:ListItem Value="1">Cao đẳng</asp:ListItem>
                                        <asp:ListItem Value="2">Trung cấp</asp:ListItem>
                                   </asp:DropDownList></p>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:35%; text-align:right">
                               
                            </td>
                            <td style="width:75%">
                                <asp:DropDownList ID="ddlNV03Nganh" runat="server" Width="68%"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center">
                                <asp:Button ID="btDangky" runat="server" Text="Đăng ký" CssClass="art-button" OnClick="btDangky_Click"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </asp:Panel>

            <asp:Panel ID="pnResult" runat="server">
                <p style="text-align:center; font-size:x-large; color:red"><b>Đăng ký thành công </b></p>
            </asp:Panel>
        </div>
    </article>
</asp:Content>

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/web.Admin/webAdmin.Master" AutoEventWireup="true" CodeBehind="ChangeHeaderCTSV.aspx.cs" Inherits="WebSchool.web.Admin.ChangeHeaderCTSV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="art-content-layout">
            <div class="art-content-layout-row">
             <div class="art-layout-cell art-sidebar1"><div class="art-vmenublock clearfix">
                <div class="art-vmenublockcontent">
                    <ul class="art-vmenu">
                        <li><a href="../web.Truong/trangchu.aspx" class="active">Trang Trường</a>
                             <ul class="active">

                            </ul>
                        </li>
                    </ul>
                    <ul class="art-vmenu">
                        <li><a href="listuser.aspx" class="active">Admin</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>
               <ul class="art-vmenu">
                        <li><a href="#" class="active">Thay đổi đầu trang</a>
                           <ul class="active">
                                <li><a href="changeHeader.aspx">Header Trường</a>

                                 </li>
                               <li><a href="ChangeHeaderTS.aspx">Header Tuyển sinh</a>

                                 </li>
                                 <li><a href="ChangeHeaderDaotao.aspx">Header Đào tạo</a>

                                 </li>
                                 <li><a href="ChangeHeaderCTSV.aspx">Header Công tác sinh viên</a>

                                 </li>
                            </ul> 
                        </li>
                </ul>
                 
                </div></div></div>
            <div class="art-layout-cell art-content"><article class="art-post art-article">
                <asp:Panel ID="pnSlide01" runat="server">
                    <h2 class="art-postheader">THAY ĐỔI HEADER CÔNG TÁC SINH VIÊN</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <table class="art-article" style="width: 100%; ">
                                            <tbody>
                                               
                                                <tr><td style="width: 14%; ">Chọn file (.JPG):</td>
                                                    <td style="width: 50%; " ><asp:FileUpload ID="upfile1" runat="server" ToolTip="Tải file đính kèm" Width="30%"/>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa chọn file cần up" ControlToValidate="upfile1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </td>

                                                </tr>
                                                                             
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Button ID="bt_savefile" Text="Thêm file đính kèm" runat="server" CssClass="art-button" OnClick="bt_savefile_Click" />
                                                        &nbsp
                                                        <input id="Button2" type="button" value="Hủy" onclick = "history.back()"  class="art-button" />
                                                    </td>
                                                </tr>                       
                                            </tbody>

                                        </table>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnResult" runat="server">
                     <h2 class="art-postheader" style="color:red">THAY ĐỔI THÀNH CÔNG</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                    </div>
                </asp:Panel>
              </article></div>
           </div>
         </div>
</asp:Content>


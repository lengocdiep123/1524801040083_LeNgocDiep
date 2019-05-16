<%@ Page Title="" Language="C#" MasterPageFile="~/web.Admin/webAdmin.Master" AutoEventWireup="true" CodeBehind="listTindoanthanhnien.aspx.cs" Inherits="WebSchool.web.Admin.listTindoanthanhnien" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
                        <li><a href="listTindoanthanhnien.aspx" class="active">Đăng tin đoàn thanh niên</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>
    
                </div></div></div>
            <div class="art-layout-cell art-content"><article class="art-post art-article">
                <asp:Panel ID="pnList" runat="server">
                    <h2 class="art-postheader"><strong>DANH SÁCH TIN TỨC</strong></h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <asp:Button ID="bt_postnews" runat="server" Text="Cập nhật đăng tin" CssClass="art-button" OnClick="bt_postnews_Click"/>
                        <asp:Button ID="bt_new" runat="server" Text="Tạo tin mới" CssClass="art-button" OnClick="bt_new_Click"/>
                        <br />
                        <p><a><span style="font-weight: bold; font-size: 14px; color: #7D2B03;">Chủ đề:&nbsp;&nbsp;</span><asp:DropDownList ID="ddlChude" runat="server" DataSourceID="SqlTruongGTChude" DataTextField="Chude" DataValueField="ID" OnSelectedIndexChanged="ddlChude_SelectedIndexChanged" AutoPostBack="True" CssClass="art-button" Width="280px" Enabled="False"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="SqlTruongGTChude" ConnectionString='<%$ ConnectionStrings:websiteschoolConnectionString %>' SelectCommand="SELECT * FROM [TruongDoanThe] WHERE ([ID] = @ID)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="4" Name="ID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </a>&nbsp;<label class="art-checkbox"><br/></label></p>
                        
                            <asp:DataGrid ID="grdList" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" Width="100%" Font-Bold="False" 
                            Font-Italic="False" Font-Overline="False" Font-Size="14px" Font-Strikeout="False" Font-Underline="False" 
                            onitemdatabound="grdList_ItemDataBound" onpageindexchanged="grdList_PageIndexChanged" AllowPaging="True" PageSize="20" OnItemCommand="grdList_ItemCommand">
                            <AlternatingItemStyle BackColor="White" />
                            <HeaderStyle CssClass="trHeader" Font-Italic="False" Font-Overline="False" Font-Size="10px" Font-Strikeout="False" Font-Underline="False">

                            </HeaderStyle>
                            <Columns>
                            <asp:TemplateColumn ItemStyle-CssClass="tdCenter" HeaderText="Đăng tin">
                                        <ItemTemplate>
                                                <asp:CheckBox ID="chkSelect" runat="server" Checked='<%# trangthaidangtin(Eval("dangtin").ToString()) %>'></asp:CheckBox>
                                        </ItemTemplate>
                                                <ItemStyle CssClass="tdCenter"></ItemStyle>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="ID" Visible="false"></asp:BoundColumn>
                                  
                                    <asp:BoundColumn DataField="tieude" HeaderText="Tiêu đề"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="tomtat" HeaderText="Nội dung tóm tắt"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="anhdaidien" HeaderText="Ảnh đại điện"></asp:BoundColumn>                                  
                                    <asp:TemplateColumn>
                                        <HeaderTemplate>Ngày đăng</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#WebSchool.Common.DateTimeClass.ConvertDate(Eval("ngaydang").ToString(),"dd/MM/yyyy") %>
                                        </ItemTemplate>
                                        <HeaderStyle Width="5%" />
                                    </asp:TemplateColumn>
                                    
                                    <asp:TemplateColumn>
                                        <HeaderTemplate>Ngày sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#WebSchool.Common.DateTimeClass.ConvertDate(Eval("ngaysua").ToString(),"dd/MM/yyyy") %>
                                        </ItemTemplate>
                                        <HeaderStyle Width="5%" />
                                    </asp:TemplateColumn>
               
                                    <asp:TemplateColumn HeaderText="File đính kèm">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbt_listfile" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' CommandName="Listfile">Danh sách</asp:LinkButton>

                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    
                                    <asp:TemplateColumn HeaderText="Chức năng">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbt_editlistnews" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' CommandName="Edit" ToolTip="Sửa">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="lbt_deletelistnews" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' CommandName="Delete" ToolTip="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
              
                            </Columns>
                            <EditItemStyle BackColor="#2461BF" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                            <ItemStyle BackColor="#EFF3FB" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="10px" Font-Strikeout="False" 
                         Font-Underline="False" />
                            <PagerStyle BackColor="#F3F8FE" ForeColor="Blue" HorizontalAlign="Center" Mode="NumericPages" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                                Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" />
                            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                         Font-Underline="False" />
                        </asp:DataGrid>

                    </div>
                </asp:Panel>
                <asp:Panel ID="pnCreate" runat="server">
                    <h2 class="art-postheader">TẠO TIN TỨC MỚI</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix">
                        <p><br/></p>
                     
                       
                        <div class="art-content-layout-wrapper layout-item-0">
                            <div class="art-content-layout">
                                <div class="art-content-layout-row">
                                     <div class="art-layout-cell" style="width: 100%" >
                                        <table class="art-article" style="width: 100%; ">
                                            <tbody>
                                                <tr><td style="width: 14%; ">Nơi đăng tin:&nbsp;<br/></td><td style="width: 50%; " ><asp:DropDownList ID="ddlChudenew" runat="server" Font-Size="Medium" Height="34px" Width="99%" CssClass="art-button" DataSourceID="SqlTruongGTChude" DataTextField="Chude" DataValueField="ID"></asp:DropDownList>
                                                  
                                                     </td>
                                                </tr>
                                                <tr><td style="width: 14%; ">Tiêu đề:</td><td style="width: 50%; " ><asp:TextBox ID="txtTieude" runat="server" Width="99%"></asp:TextBox></td></tr>
                                                <tr><td style="width: 14%; ">Nội dung tóm tắt:</td><td style="width: 50%; " ><asp:TextBox ID="txtnoidungtomtat" runat="server" Width="99%"></asp:TextBox></td></tr>
                                                <tr><td style="width: 14%; ">Nội dung chính:</td><td style="width: 50%; " ><br/></td></tr>
                                                <tr>
                                                    <td style="width: 64%; " colspan="2">
                                                        <CKEditor:CKEditorControl ID="txtNoidungchinh" runat="server" Height="350px"></CKEditor:CKEditorControl>
                                                    </td>

                                                </tr>
                                                <tr><td style="width: 14%; ">Ảnh đại diện:<br/></td><td style="width: 99%;" >
                                                    <asp:FileUpload ID="upAnhdaidien" runat="server" ToolTip="Tải ảnh .jpeg hoặc .png"/></td></tr>
                                                <tr>
                                                    <td colspan="2">
                                                         <asp:Button ID="bt_savenews" Text="Thêm tin" runat="server" CssClass="art-button" OnClick="bt_savenews_Click" />
                                                         &nbsp
                                                         <input id="Button3" type="button" value="Hủy" onclick = "history.back()"  class="art-button" />
                                                        
                                                    </td>
                                                </tr>

                                            </tbody>

                                        </table>
                                      
                                    </div>
                                  </div>
                               </div>
                            </div>

                    </div>
                </asp:Panel>
             
                <asp:Panel ID="pnattachfile" runat="server">
                  <h2 class="art-postheader"><strong>THÊM FILE ĐÍNH KÈM</strong></h2>
                    <div class="art-postcontent art-postcontent-0 clearfix">
                        <p><br/></p>
                        <div class="art-content-layout-wrapper layout-item-0">
                            <div class="art-content-layout">
                                <div class="art-content-layout-row">
                                     <div class="art-layout-cell" style="width: 100%" >
                                        <table class="art-article" style="width: 100%; ">
                                            <tbody>
                                                <tr><td style="width: 14%; ">Bảng tin:&nbsp;<br/></td><td style="width: 50%; " ><asp:Label ID="lbTieudethemfile" runat="server"></asp:Label>
                                                  
                                                     </td>
                                                </tr>
                                                <tr><td style="width: 14%; ">Nội dung mô tả file:</td>
                                                    <td style="width: 50%; " ><asp:TextBox ID="txtfile1" runat="server" Width="65%"></asp:TextBox><asp:FileUpload ID="upfile1" runat="server" ToolTip="Tải file đính kèm" Width="30%"/>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn chưa chọn file cần up" ControlToValidate="upfile1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        <asp:Label ID="lbfilethongbao" runat="server" ForeColor="Red"></asp:Label>
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
                                        <br />
                                                                                  
                                    </div>
                                  </div>
                               </div>
                            </div>

                    </div>
                </asp:Panel>

                <asp:Panel ID="pnlistfile" runat="server">
                    <h2 class="art-postheader"><strong>DANH SÁCH FILE ĐÍNH KÈM</strong></h2>
                    <div class="art-postcontent art-postcontent-0 clearfix">
                        <p><br/></p>
                        <asp:Button ID="bt_updatefile" Text="Thêm file đính kèm" runat="server" CssClass="art-button" OnClick="bt_updatefile_Click" />
                        &nbsp
                        <asp:Button ID="bt_previousnews" Text="Trở về danh sách tin" runat="server" CssClass="art-button" OnClick="bt_previousnews_Click" />
                        <div class="art-content-layout-wrapper layout-item-0">
                            <div class="art-content-layout">
                                <div class="art-content-layout-row">
                                     <div class="art-layout-cell" style="width: 100%" >
                                      
                                                 <p>Bảng tin:&nbsp<asp:Label ID="lbTieudedsfile" runat="server"></asp:Label></p>
                                                
                                                        <asp:DataGrid ID="grdattachfiles" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="2" ForeColor="Black" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                                                BorderWidth="1px" GridLines="None" OnItemCommand="grdattachfiles_ItemCommand">
                                                            <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                                            <Columns>
                                
                                                                <asp:BoundColumn DataField="noidung" HeaderText="Mô tả file"></asp:BoundColumn>
                                    
                                                                <asp:TemplateColumn HeaderText="Chức năng">
                                                                    <ItemTemplate>
                                           
                                                                        <asp:LinkButton ID="lbt_deletelistfile" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' CommandName="Delete" ToolTip="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');">Delete</asp:LinkButton>
                                                                    </ItemTemplate>
                                                                </asp:TemplateColumn>
                                                            </Columns>
                                                            <FooterStyle BackColor="Tan" />
                                                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                                            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                        </asp:DataGrid>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </article></div>
           </div>
            <asp:Label ID="lbtempID" runat="server" ForeColor="White" Font-Size="4pt"></asp:Label>
            <asp:Label ID="lbtempanhdaidien" runat="server" ForeColor="White" Font-Size="4pt"></asp:Label>
         </div>  

</asp:Content>



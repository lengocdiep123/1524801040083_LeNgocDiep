<%@ Page Title="" Language="C#" MasterPageFile="~/web.Admin/webAdmin.Master" AutoEventWireup="true" CodeBehind="listuser.aspx.cs" Inherits="WebSchool.web.Admin.listuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="art-content-layout">
            <div class="art-content-layout-row">
             <div class="art-layout-cell art-sidebar1"><div class="art-vmenublock clearfix">
                <div class="art-vmenublockcontent">
                        <ul class="art-vmenu">
                            <li><a href="../web.Truong/trangchu.aspx" class="active">Trang Trường</a>
                               
                            </li>
                        </ul>
                    <asp:Panel ID="pnAdmin" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listuser.aspx" class="active">Danh sách tài khoản</a>
                          
                            </li>

                        </ul>
                        <ul class="art-vmenu">
                            <li><a href="ChangeSlide.aspx" class="active">Thay đổi Slide</a>
                           
                            </li>
                        </ul>
                        <ul class="art-vmenu">
                            <li><a href="changeHeader.aspx" class="active">Thay đổi đầu trang giới thiệu trường</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnTruongNoibo" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTintruongvanoibo.aspx" class="active">Đăng tin trường và nội bộ</a>
                             
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnTS" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTintttuyensinhvahotrovieclam.aspx" class="active">Trung tâm tuyển sinh và hỗ trợ việc làm</a>
                         
                            </li>
                        </ul>
                    </asp:Panel>

                    <asp:Panel ID="pnHanhchinh" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinhanhchinh.aspx" class="active">Phòng hành chính-Quản trị</a>
                             
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnTaichinh" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTintaichinh.aspx" class="active">Phòng tài vụ-Cơ sở vật chất</a>
                           
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnCTSV" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTincongtacsinhvien.aspx" class="active">Phòng công tác HSSV & quan hệ xí nghiệp</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnDaotao" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTindaotao.aspx" class="active">Phòng đào tạo</a>
                           
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    
                    <%--<ul class="art-vmenu">
                        <li><a href="listTinquantrithietbi.aspx" class="active">Phòng quản trị thiết bị</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>
                    
                    <ul class="art-vmenu">
                        <li><a href="listTinhoptacquoctevakhoahoc.aspx" class="active">Phòng hợp tác quốc tế và quản lý khoa học</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>
                   
                    <ul class="art-vmenu">
                        <li><a href="listTindambaochatluongvakhaothi.aspx" class="active">Phòng đảm bảo chất lượng và khảo thí</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                    <asp:Panel ID="pnKhoaCokhi" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinkhoacokhi.aspx" class="active">Khoa Cơ khí - Ô tô</a>
                          
                            </li>
                        </ul>
                    </asp:Panel>
                    
                   
                  <%--  <ul class="art-vmenu">
                        <li><a href="listTinkhoacongngheoto.aspx" class="active">Khoa công nghệ ô tô</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                   <asp:Panel ID="pnKhoaTinhoc" runat="server">
                       <ul class="art-vmenu">
                            <li><a href="listTinkhoacongnghethongtin.aspx" class="active">Khoa Tin học - Nữ công</a>
                         
                            </li>
                        </ul>
                   </asp:Panel>
                    
                   <asp:Panel ID="pnKhoaDientu" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinkhoadiendienlanh.aspx" class="active">Khoa Kỹ thuật điện</a>
                             
                            </li>
                        </ul>   
                   </asp:Panel>
                    
                                      
                <%--    <ul class="art-vmenu">
                        <li><a href="listTinkhoadientu.aspx" class="active">Khoa điện tử</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                                       
                  <%--  <ul class="art-vmenu">
                        <li><a href="listTinkhoakinhte.aspx" class="active">Khoa kinh tế</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                    <asp:Panel ID="KhoaCongnghethucpham" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinkhoacongnghethucpham.aspx" class="active">Khoa Kỹ thuật cơ sở - Nông nghệp</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                   <%-- <asp:Panel ID="pnKhoaGiaoduc" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinkhoagiaoducnghenghiep.aspx" class="active">Khoa Nữ công</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>--%>
                    
                 <%--   <asp:Panel ID="pnKhoaKhoahoccoban" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinkhoakhoahoccoban.aspx" class="active">Tổ bộ môn chung</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>--%>
                    
                    <asp:Panel ID="pnTTboiduongKn" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinttboiduongkynangvaquanhedoanhnghiep.aspx" class="active">Tổ văn hóa</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnDangbo" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTindangbo.aspx" class="active">Chi bộ</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                                    
                    <%--<ul class="art-vmenu">
                        <li><a href="listTinhoicuusinhvien.aspx" class="active">Hội cựu sinh viên</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                    <asp:Panel ID="pnCongdoan" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTincongdoan.aspx" class="active">Công đoàn</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                    <asp:Panel ID="pnDoanthanhnien" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTindoanthanhnien.aspx" class="active">Đoàn thanh niên</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                                    
                    <%--<ul class="art-vmenu">
                        <li><a href="listTinhoisinhvien.aspx" class="active">Hội sinh viên</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                    <asp:Panel ID="pnThuvien" runat="server">
                        <ul class="art-vmenu">
                            <li><a href="listTinthuvien.aspx" class="active">Thư viện</a>
                            
                            </li>
                        </ul>
                    </asp:Panel>
                    
                  <%--  <ul class="art-vmenu">
                        <li><a href="listTinTainguyen.aspx" class="active">Tài nguyên</a>
                             <ul class="active">

                            </ul> 
                        </li>
                    </ul>--%>
                 
                </div></div></div>
            <div class="art-layout-cell art-content"><article class="art-post art-article">
                <asp:Panel ID="pnList" runat="server">
                    <h2 class="art-postheader">DANH SÁCH TÀI KHOẢN</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <p><a><asp:Button ID="bt_new" runat="server" Text="Tạo tài khoản mới" CssClass="art-button" OnClick="bt_new_Click"/></a>&nbsp;<label class="art-checkbox"><br/></label></p>
                        <asp:DataGrid ID="grdList" runat="server" AutoGenerateColumns="False" CellPadding="2" ForeColor="Black" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" GridLines="None" onitemcommand="grdList_ItemCommand" >
                            <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                <Columns>
                                    <asp:BoundColumn DataField="UserName" HeaderText="Tài khoản"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="Name" HeaderText="Quyền Truy Cập"></asp:BoundColumn>
            
                                    <asp:TemplateColumn HeaderText="Chức năng">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbtdelete" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"UserName")%>' CommandName="Delete" ToolTip="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');">Delete</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                          </asp:DataGrid>
                    </div>
                </asp:Panel>
                <asp:Panel ID="pnCreate" runat="server">
                    <h2 class="art-postheader">TẠO TÀI KHOẢN</h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <p style="padding-left: 75px;"><span style="font-weight: bold; font-size: 14px; color: #7D2B03;">Đơn vị:&nbsp;&nbsp;</span><asp:DropDownList ID="gdlGroupUsers" runat="server" CssClass="art-button" Font-Size="Medium" Height="34px" Width="228px" DataSourceID="SqlGroupUsers" DataTextField="Name" DataValueField="ID" ></asp:DropDownList>
                         
                            <asp:SqlDataSource ID="SqlGroupUsers" runat="server" ConnectionString="<%$ ConnectionStrings:websiteschoolConnectionString %>" SelectCommand="SELECT * FROM [GroupUsers]"></asp:SqlDataSource>
                         
                        </p>
                        <p style="padding-left: 25px;"><span style="font-weight: bold; font-size: 14px; color: #7D2B03;">Tên đăng nhập:</span><span style="color: #7D2B03;">&nbsp;</span><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không bỏ trống" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
              
                        </p>
                        
                        <p style="padding-left: 40px;"><span style="font-weight: bold; color: #7D2B03;">Mật khẩu khẩu:</span> &nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không bỏ trống" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                        <p style="padding-left: 100px;">&nbsp;<a><asp:Button ID="bt_Insert" runat="server" Text="Đăng ký" CssClass="art-button" OnClick="bt_Insert_Click"/></a>
                            &nbsp
                            <input id="Button3" type="button" value="Hủy" onclick = "history.back()"  class="art-button" />
                        </p>
                    </div>
                </asp:Panel>

            </article></div>
           </div>
         </div>  
</asp:Content>

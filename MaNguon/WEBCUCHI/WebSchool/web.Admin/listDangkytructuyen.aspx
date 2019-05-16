<%@ Page Title="" Language="C#" MasterPageFile="~/web.Admin/webAdmin.Master" AutoEventWireup="true" CodeBehind="listDangkytructuyen.aspx.cs" Inherits="WebSchool.web.Admin.listDangkytructuyen" %>

<%--<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>--%>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="PdfViewer" Namespace="PdfViewer" TagPrefix="cc1" %>
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
                        <li><a href="listTintttuyensinhvahotrovieclam.aspx" class="active">Đăng tin trung tâm tuyển sinh và hỗ trợ việc làm</a>
                              <ul class="active">
                                 <li><a href="listTintttuyensinhvahotrovieclam.aspx">Đăng tin trung tâm tuyển sinh và hỗ trợ việc làm</a>

                                 </li>
                                 <li><a href="listTintttshoso.aspx">Đăng tin hồ sơ tuyển sinh</a>

                                 </li>
                                 <li><a href="listTintttsketqua.aspx">Đăng tin kết quả tuyển sinh</a>

                                 </li>
                                  <li><a href="listDangkytructuyen.aspx">Danh sách đăng kí trực tuyến</a>

                                 </li>
                             </ul>
                        </li>
                    </ul>
    
                </div></div></div>
            <div class="art-layout-cell art-content"><article class="art-post art-article">
                <asp:Panel ID="pnList" runat="server">
                    <h2 class="art-postheader"><strong>DANH SÁCH ĐĂNG KÝ TUYỂN SINH TRỰC TUYẾN</strong></h2>
                    <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p>
                        <asp:Button ID="btprint" runat="server" Text="xuất danh sách đăng ký" CssClass="art-button" OnClick="btprint_Click"/>
                        
                        <br />
                        <p>Lọc danh sách:</p>
                        <p>Từ ngày: <asp:TextBox ID="txtTungay" runat="server" TextMode="Date"></asp:TextBox>
                            &nbsp đến ngày:<asp:TextBox ID="txtDenngay" runat="server" TextMode="Date"></asp:TextBox>
                            &nbsp <asp:Button ID="btLoc" runat="server" Text="Lọc"  CssClass="art-button" OnClick="btLoc_Click"/></p>
                        <asp:DataGrid ID="grdList" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="2" ForeColor="Black" Width="100%" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
                                BorderWidth="1px" GridLines="None" OnItemCommand="grdList_ItemCommand">
                            <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                <Columns>

                                    <%-- <asp:TemplateColumn>
                                        <HeaderTemplate>
                                            <asp:CheckBox ID="chkSelectAll" runat="server" AutoPostBack="False"></asp:CheckBox></HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSelect" runat="server"></asp:CheckBox></ItemTemplate>
                                            <ItemStyle CssClass="tdCenter"></ItemStyle>
                                        </asp:TemplateColumn>--%>

                                    <asp:BoundColumn DataField="hoten" HeaderText="Họ và tên"></asp:BoundColumn>
                                    <asp:TemplateColumn>
                                        <HeaderTemplate>Ngày sinh</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#WebSchool.Common.DateTimeClass.ConvertDate(Eval("ngaysinh").ToString(),"dd/MM/yyyy") %>
                                        </ItemTemplate>
                                        <HeaderStyle Width="5%" />
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="Dienthoai" HeaderText="Điện thoại"></asp:BoundColumn>
                                       
                                        <asp:BoundColumn DataField="hotennhanthu" HeaderText="Họ tên nhận thư"></asp:BoundColumn>                                  
                                        <asp:BoundColumn DataField="dienthoainhanthu" HeaderText="ĐT nhận thư" HeaderStyle-Width="8%"></asp:BoundColumn>
                                   
                                    <asp:TemplateColumn>
                                        <HeaderTemplate>Tốt nghiệp</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#totnghiep(Eval("datotnghiep").ToString())%>
                                        </ItemTemplate>
                                        <HeaderStyle Width="5%" />
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="namtotnghiep" HeaderText="Năm TN" HeaderStyle-Width="5%"></asp:BoundColumn>
                                    
                                    <asp:TemplateColumn>
                                        <HeaderTemplate>Ngày ĐK</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#WebSchool.Common.DateTimeClass.ConvertDate(Eval("ngaydangky").ToString(),"dd/MM/yyyy") %>
                                        </ItemTemplate>
                                        <HeaderStyle Width="5%" />
                                        </asp:TemplateColumn>

                                    <asp:TemplateColumn HeaderText="Nguyện vọng">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbt_nguyenvong" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' CommandName="Show" ToolTip="Xem thông tin chi tiết">Xem</asp:LinkButton>
                                        </ItemTemplate>
                                        <HeaderStyle Width="5%" />
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Chức năng">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbt_deletelistnews" runat="server" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' CommandName="Delete" ToolTip="Xóa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa không?');">Delete</asp:LinkButton>
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
                <asp:Panel ID="pnDetail" runat="server">
                    <asp:DetailsView ID="dtdetailview" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AutoGenerateRows="False">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <Fields>
                           
                            <asp:BoundField DataField="ID" Visible="false"/>
                            <asp:BoundField DataField="Hoten" HeaderText="Họ và tên" />
                            <asp:BoundField DataField="ngaysinh" HeaderText="Ngày sinh" />
                            <asp:BoundField DataField="hokhau" HeaderText="Hộ khẩu" />
                            <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" />
                            <asp:BoundField DataField="cmnd" HeaderText="Chứng minh ND" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="nv1trinhdo" HeaderText="Nguyện vọng 1" />
                            <asp:BoundField DataField="nv1nganh" HeaderText="Ngành" />
                            <asp:BoundField DataField="nv2trinhdo" HeaderText="Nguyện vọng 2" />
                            <asp:BoundField DataField="nv2nganh" HeaderText="Ngành" />
                            <asp:BoundField DataField="nv3trinhdo" HeaderText="Nguyện vọng 3" />
                            <asp:BoundField DataField="nv3nganh" HeaderText="Ngành" />
                            <asp:BoundField DataField="hotennhanthu" HeaderText="Người nhận thư" />
                            <asp:BoundField DataField="diachinhanthu" HeaderText="Địa chỉ" />
                            <asp:BoundField DataField="dienthoainhanthu" HeaderText="Điện thoại" />
                            
                        </Fields>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                      
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                    </asp:DetailsView>
                </asp:Panel>
              <%--  <asp:Panel ID="pnprintAll" runat="server">
                    
                    <CR:CrystalReportViewer ID="ReportViewerAll" runat="server" AutoDataBind="True" Height="962px" 
                     ToolPanelView="None" ToolPanelWidth="200px" Width="1143px"/>
                </asp:Panel>--%>
            </article>

            </div>
           </div>
           

         </div>  
</asp:Content>

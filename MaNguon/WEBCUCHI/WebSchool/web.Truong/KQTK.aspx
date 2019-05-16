<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="KQTK.aspx.cs" Inherits="WebSchool.KQTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <article class="art-post art-article">
    <div class="art-postmetadataheader">
        <h4 class="art-postheader">KẾT QUẢ TÌM KIẾM</h4>

    </div>
                                                
    <div class="art-postcontent art-postcontent-0 clearfix">
        <div class="art-content-layout layout-item-0">
            <div class="art-content-layout-row">
                <div class="art-layout-cell layout-item-2" style="width: 100%" >
                    
                    <div class="image-caption-wrapper">
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                               <h4> &nbsp;<asp:Label ID="tieudeLabel" runat="server" Text='<%# Eval("tieude") %>' ForeColor="Red" /> </h4>
                                <br />
                               
                                <asp:Label ID="tomtatLabel" runat="server" Text='<%# Eval("tomtat") %>' />
                                <br />
                                
                                <asp:Label ID="noidungLabel" runat="server" Text='<%# Eval("noidung") %>' />
                                <br />
                                ngày đăng:
                                <asp:Label ID="ngaydangLabel" runat="server" Text='<%# Eval("ngaydang") %>' />
                                <br />
                                 
                                ngày sửa:
                                <asp:Label ID="ngaysuaLabel" runat="server" Text='<%# Eval("ngaysua") %>' />
                                <br />
                                <br />
                            </ItemTemplate>

                        </asp:DataList>
                        

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:websiteschoolConnectionString %>" SelectCommand="SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongKhoaTrungtamTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM DaoTaoCTDTTinTuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongGioithieuTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongNoiboTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongPhongbanTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongSinhvienTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongTainguyenTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TruongThuvienTinTuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TSHoSoTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TSKetQuaTintuc WHERE (tieude LIKE '%' + @timkiem + '%') UNION SELECT tieude, tomtat, ngaydang, ngaysua, noidung FROM TSTintuc WHERE (tieude LIKE '%' + @timkiem + '%')
">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="timkiem" QueryStringField="tieude" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
             
                </div>
            </div>
   
        </div>
    </div>
   

</article>
</asp:Content>

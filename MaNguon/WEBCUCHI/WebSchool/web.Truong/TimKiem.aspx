<%@ Page Title="" Language="C#" MasterPageFile="~/web.Truong/webTruong.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="WebSchool.TimKiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article class="art-post art-article">
        <div class="art-postmetadataheader">
            <h4 class="art-postheader">TÌM KIẾM</h4>

        </div>

        <div class="art-postcontent art-postcontent-0 clearfix">
            <div class="art-content-layout layout-item-0">
                <div class="art-content-layout-row">
                    <div class="art-layout-cell layout-item-2" style="width: 100%">

                        <div class="image-caption-wrapper">
                            <h4>Nhập từ khóa tìm kiếm</h4>
                            <div class="search" style="float: left">
                                <asp:TextBox ID="txtnd" runat="server" Width="240px"></asp:TextBox>
                                <asp:Button ID="timkiem" runat="server" Text="Tìm kiếm" OnClick="timkiem_Click" />

                                
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>


    </article>
</asp:Content>


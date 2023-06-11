<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="E_Learning.User.video" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        * {
            font-family: "Titillium Web", sans-serif;
        }


        .navbar .navbar-brand {
            font-size: 30px;
        }

        .navbar .nav-item {
            padding: 10px 20px;
        }

        .navbar .nav-link {
            font-size: 20px;
        }

        .fa-bars {
            color: #007bff;
            font-size: 30px;
        }



        /* Gray */
        .default {
            color: black;
        }

            .default:hover {
                background: #000000;
                color: white;
            }

        .navbar {
            padding-top: 0 !important;
            padding-bottom: 0 !important;
        }

        .auto-style1 {
            font-family: "Lucida Calligraphy";
            font-size: x-large;
            text-decoration: blink;
        }

        .team-item img {
            transition: .5s;
        }

        .team-item:hover img {
            transform: scale(1.1);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
                <div class="card mb-4">
  <div class="card" style="height:400px;width:500px">
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl='<%# Eval("C_PHOTO") %>' NavigateUrl='<%# Eval("C_LINK") %>' ImageHeight="300px" ImageWidth="500px">HyperLink</asp:HyperLink>
    <div class="card-body">
      <h5 class="card-title">
                                                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("COUSE_DETAILS") %>'></asp:Label>
          </h5>
    </div>
  </div>
                </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [COUSE_DETAILS], [C_PHOTO], [C_LINK] FROM [C_DETAIL] WHERE ([CAT_ID] = @CAT_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CAT_ID" QueryStringField="CAT_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

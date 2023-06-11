<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="E_Learning.User.details" %>

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
    <asp:Label ID="Label1" runat="server" Text="Chose Category For Selected Course" Font-Bold="True" Font-Names="Castellar" CssClass="auto-style1"></asp:Label>



    <nav class="navbar" style="width: 100%; overflow: hidden; height: 44px; background-color: black;">

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="24px" RepeatDirection="Horizontal" Width="961px" OnItemCommand="DataList1_ItemCommand1">
             <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" class="nav-link" runat="server" Text='<%# Eval("CAT_NAME") %>' CommandName="video" CommandArgument='<%# Eval("CAT_ID") %>'></asp:LinkButton>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
  <%--      <asp:DataList ID="cat" runat="server" DataKeyField="CAT_ID" DataSourceID="SqlDataSource1" Height="24px" RepeatDirection="Horizontal" Width="961px" OnItemCommand="cat_ItemCommand">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton2" class="nav-link" runat="server" Text='<%# Eval("CAT_NAME") %>' CommandName="video" CommandArgument='<%# Eval("CAT_ID") %>'></asp:LinkButton>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>--%>
    </nav>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category] WHERE ([C_ID] = @C_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="C_ID" QueryStringField="C_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />


    <asp:DataList ID="DataList2" runat="server" DataKeyField="D_ID" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="img-fluid">
        <ItemTemplate>


            <div class="card mb-4">
                <div class="card " style="height: 400px; width: 555px">
                    <div class="overflow-hidden">

                        <asp:HyperLink ID="HyperLink2" class="img-fluid" imageclass="img-fluid" runat="server" ImageUrl='<%# Eval("C_PHOTO") %>' NavigateUrl='<%# Eval("C_LINK") %>' ImageHeight="300px" ImageWidth="555px">HyperLink</asp:HyperLink>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("COUSE_DETAILS") %>'></asp:Label>
                        </h5>
                    </div>
                </div>
            </div>

        </ItemTemplate>
    </asp:DataList>




    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [C_DETAIL]"></asp:SqlDataSource>



 

</asp:Content>

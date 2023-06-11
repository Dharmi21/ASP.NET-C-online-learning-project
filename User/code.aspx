<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="code.aspx.cs" Inherits="E_Learning.User.code" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Online C++ Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54fX">
                </div>
            </td>
            <td>
                 <asp:Label ID="Label2" runat="server" Text="Online Python Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54gi">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label3" runat="server" Text="Online SQL Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54gc">
                </div>
            </td>
            <td>
                 <asp:Label ID="Label4" runat="server" Text="Online PHP Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54gd">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label5" runat="server" Text="Online JAVA Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54ge">
                </div>
            </td>
            <td>
                 <asp:Label ID="Label6" runat="server" Text="Online C# Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54gf">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="Label7" runat="server" Text="Online NodeJS Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54gg">
                </div>
            </td>
            <td>
                 <asp:Label ID="Label8" runat="server" Text="Online C Compiler" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                <div data-pym-src="https://www.jdoodle.com/embed/v0/54gk">
                </div>
            </td>
        </tr>
    </table>



    <script src="https://www.jdoodle.com/assets/jdoodle-pym.min.js"
        type="text/javascript">
    </script>
</asp:Content>

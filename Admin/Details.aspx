<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="E_Learning.Admin.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Importing fonts from Google */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        /* Reseting */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: #ecf0f3;
        }

        .wrapper {
            max-width: 350px;
            min-height: 500px;
            margin: 80px auto;
            padding: 40px 30px 30px 30px;
            background-color: #ecf0f3;
            border-radius: 15px;
            box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px #fff;
        }

        .logo {
            width: 80px;
            margin: auto;
        }

            .logo img {
                width: 100%;
                height: 80px;
                object-fit: cover;
                border-radius: 50%;
                box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3, 8px 8px 15px #a7aaa7, -8px -8px 15px #fff;
            }

        .wrapper .name {
            font-weight: 600;
            font-size: 1.4rem;
            letter-spacing: 1.3px;
            padding-left: 10px;
            color: #555;
        }

        .wrapper .form-field input {
            width: 100%;
            display: block;
            border: none;
            outline: none;
            background: none;
            font-size: 1.2rem;
            color: #666;
            padding: 10px 15px 10px 10px;
            /* border: 1px solid red; */
        }

        .wrapper .form-field {
            padding-left: 10px;
            margin-bottom: 20px;
            border-radius: 20px;
            box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff;
        }

            .wrapper .form-field .fas {
                color: #555;
            }

        .wrapper .btn {
            box-shadow: none;
            width: 100%;
            height: 40px;
            background-color: #03A9F4;
            color: #fff;
            border-radius: 25px;
            box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
            letter-spacing: 1.3px;
        }

            .wrapper .btn:hover {
                background-color: #039BE5;
            }

        .wrapper a {
            text-decoration: none;
            font-size: 0.8rem;
            color: #03A9F4;
        }

            .wrapper a:hover {
                color: #039BE5;
            }

        @media(max-width: 380px) {
            .wrapper {
                margin: 30px 20px;
                padding: 40px 15px 15px 15px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" class="p-3 mt-3" runat="server">
        <div class="wrapper">
            <div class="logo">
                <img src="../logo.png" alt="">
            </div>
            <div class="text-center mt-4 name">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Add New Details
            </div>
            </br>

                     

     select course:
                <asp:DropDownList class="form-field d-flex align-items-center"  ID="ddl_course" runat="server" DataTextField="C_NAME" DataValueField="C_ID" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged">
                                   <asp:ListItem>select course</asp:ListItem>

                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddl_course" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
  select category:
                <asp:DropDownList class="form-field d-flex align-items-center" ID="ddl_cat" runat="server"  DataTextField="CAT_NAME" DataValueField="CAT_ID" AppendDataBoundItems="true">
                                   <asp:ListItem>select category</asp:ListItem>

                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_cat" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <asp:TextBox  ID="link" placeholder="Enter video link" runat="server"></asp:TextBox>
               
             </div>
            
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="link" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            
                            <br />
            
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="please enter video link only" ControlToValidate="link" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" BorderColor="Black" BorderStyle="Dotted" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>

             <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <asp:FileUpload ID="photo" runat="server" />
               
            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="photo" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <asp:TextBox ID="detail" placeholder="Enter video details" runat="server"></asp:TextBox>
            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="detail" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <asp:TextBox ID="search" placeholder="Enter search value" runat="server"></asp:TextBox>
            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="search" ErrorMessage="Add Some Value" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:Button ID="Button1" class="btn mt-3" runat="server" Text="Add" OnClick="Button1_Click" />

        </div>
          
    </form>
</body>
</html>

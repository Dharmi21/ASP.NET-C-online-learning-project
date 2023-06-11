﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam_mcq.aspx.cs" Inherits="E_Learning.MCQ.exam_mcq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* coding with nick */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500&display=swap');
*{
  box-sizing: border-box;
}
body{
  background-color: #b8c6db;
  background-image: linear-gradient(315deg, #b8c6db 0%, #f5f7f7 100%);
  font-family: 'Poppins', sans-serif;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  
}
.quiz-container{
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px 2px rgba(100, 100, 100, 0.1);
  width: 600px;
  height: 100%;
}
.quiz-header{
  padding: 4rem;
}
h2{
  padding: 1rem;
  text-align: center;
  margin: 0;
}
ul{
  list-style-type: none;
  padding: 0;
}
ul li{
  font-size: 1.2rem;
  margin: 1rem 0;
}
ul li label{
  cursor: pointer;
}
button{
  background-color: #03cae4;
  color: #fff;
  border: none;
  display: block;
  width: 100%;
  cursor: pointer;
  font-size: 1.1rem;
  font-family: inherit;
  padding: 1.3rem;
}
button:hover{
  background-color: #04adc4;
}
button:focus{
  outline: none;
  background-color: #44b927;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="quiz-container" id="quiz">
    <div class="quiz-header">
        Email_Id:
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
                <asp:Label ID="lbl_examshowwarning" runat="server" Text=""></asp:Label>

      <h2 id="question"> <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" GridLines="None">

         <Columns>
            <asp:TemplateField>
                 <ItemTemplate>
                      <asp:Label ID="lblid" runat="server" Text='<%# Eval("Id") %>' Visible="false"></asp:Label>
                QUESTION:
                <asp:Label ID="QUESTIONLabel" runat="server" Text='<%# Eval("QUESTION") %>' />
                <br />

               
               
                <asp:RadioButton GroupName="a" ID="RadioButton1" class="answer" Text='<%# Eval("O1") %>' runat="server" />
                  <br />
               
                                <asp:RadioButton GroupName="a" class="answer" ID="RadioButton2"  Text='<%# Eval("O2") %>' runat="server" />
                  <br />
               
               
      <asp:RadioButton GroupName="a" ID="RadioButton3" class="answer" Text='<%# Eval("O3") %>' runat="server" />

                 <br />
            
           <asp:RadioButton GroupName="a" ID="RadioButton4" class="answer" Text='<%# Eval("O4") %>' runat="server" />

               <br />
                     
                     <br />
                           <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
                     <br />
               <asp:Label ID="Label3" runat="server" Visible="false" Text="ANSWER:" ></asp:Label>

                     <asp:Label ID="ANSWER" runat="server" Text='<%# Eval("ANSWER") %>' Visible="false" ForeColor="#000066"></asp:Label>
                     <br />

            </ItemTemplate>
                </asp:TemplateField>
             </Columns>
    </asp:GridView>
      
        <asp:Label ID="l1" runat="server" Text=""></asp:Label><br /> <br/>

                   <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />

  </div>
         <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detailsdata.aspx.cs" Inherits="E_Learning.Admin.Detailsdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
           <style>
        @import url("https://fonts.googleapis.com/css?family=Titillium+Web");

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
.position-relative {
  position: relative !important; }
.card {
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06); }
  .card[data-animation="true"] .card-header {
    transform: translate3d(0, 0, 0);
    transition: all 300ms cubic-bezier(0.34, 1.61, 0.7, 1); }
  .card:hover[data-animation="true"] .card-header {
    transform: translate3d(0, -50px, 0); }
  .card .card-header {
    padding: 1.5rem; }
  .card .card-body {
    font-family: "Roboto", Helvetica, Arial, sans-serif;
    padding: 1.5rem; }
  .card.card-plain {
    background-color: transparent;
    box-shadow: none; }
  .card .card-footer {
    padding: 1.5rem;
    background-color: transparent; }
.card-header {
  padding: 0.5rem 1rem;
  margin-bottom: 0;
  background-color: #007bff;
  border-bottom: 0 solid rgba(0, 0, 0, 0.125); }
  .card-header:first-child {
    border-radius: 0.75rem 0.75rem 0 0; }
  .shadow-primary {
  box-shadow: 0 4px 20px 0 rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(233, 30, 99, 0.4) !important; }
  .text-white {
  color: #fff !important; }
  
.bg-gradient-primary {
  background-image: linear-gradient(195deg, #EC407A 0%,#007bff 100%); }
.border-radius-lg {
  border-radius: 0.5rem; }
.text-capitalize {
  text-transform: capitalize !important; }
.table-responsive {
  overflow-x: auto;
  -webkit-overflow-scrolling: touch; }
.table {
  --bs-table-bg: transparent;
  --bs-table-accent-bg: transparent;
  --bs-table-striped-color: #7b809a;
  --bs-table-striped-bg: rgba(0, 0, 0, 0.05);
  --bs-table-active-color: #7b809a;
  --bs-table-active-bg: rgba(0, 0, 0, 0.1);
  --bs-table-hover-color: #7b809a;
  --bs-table-hover-bg: rgba(0, 0, 0, 0.075);
  width: 100%;
  margin-bottom: 1rem;
  color: #7b809a;
  vertical-align: top;
  border-color: #f0f2f5; }
table {
  caption-side: bottom;
  border-collapse: collapse; }
.z-index-2 {
  z-index: 2 !important; }
.pt-4 {
  padding-top: 1.5rem !important; }
.pb-3 {
  padding-bottom: 1rem !important; }
.mt-n4 {
  margin-top: -1.5rem !important; }
.ps-3 {
  padding-left: 1rem !important; }
.border-radius-lg {
  border-radius: 0.5rem; }
.my-4 {
  margin-top: 1.5rem !important;
  margin-bottom: 1.5rem !important; }
.px-0 {
  padding-right: 0 !important;
  padding-left: 0 !important; }
.pb-2 {
  padding-bottom: 0.5rem !important; }
.p-0 {
  padding: 0 !important; }
.col-12 {
  flex: 0 0 auto;
  width: 100%; }
.align-items-center {
  align-items: center !important; }
.mb-0 {
  margin-bottom: 0 !important; }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section  id="S3">
         <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h6 class="text-white text-capitalize ps-3 " style="text-align: center;font-size:x-large">Details Data</h6>
              </div>
            </div>
         <div class="col-12">
          <div class="card my-4">
            <div class="card-body px-0 pb-2">
              <div class="table-responsive p-0">

        <asp:GridView ID="update" runat="server" class="table align-items-center mb-0"  AutoGenerateColumns="false"  DataKeyNames="D_ID" OnRowEditing="update_RowEditing" OnRowUpdating="update_RowUpdating" OnRowDeleting="update_RowDeleting" OnRowCancelingEdit="update_RowCancelingEdit" >
             <Columns>
                 <asp:TemplateField HeaderStyle-Width="150px">
                        <ItemTemplate>
                            <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>
                            <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                           
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="D_ID" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="D_ID" runat="server" Text='<%#Container.DataItemIndex+1%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="C_ID" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="course" runat="server" Text='<%# Eval("C_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                          <asp:TextBox ID="C_ID" runat="server" Text='<%# Eval("C_ID") %>' ReadOnly="true"></asp:TextBox>

                            </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CAT_ID" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="cat_id" runat="server" Text='<%# Eval("CAT_ID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                         <asp:TextBox ID="CAT_ID" runat="server" Text='<%# Eval("CAT_ID") %>' ReadOnly="true"></asp:TextBox>

           </EditItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="LINK" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="link" runat="server" Text='<%# Eval("C_LINK") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_link" runat="server" Text='<%# Eval("C_LINK") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Image" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Image ID="photo" runat="server" ImageUrl='<%# Eval("C_PHOTO") %>'
                                Height="200px" Width="200px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Image ID="pho_to" runat="server" ImageUrl='<%# Eval("C_PHOTO") %>'
                                Height="200px" Width="200px" /><br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DETAIL" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="detail" runat="server" Text='<%# Eval("COUSE_DETAILS") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_detail" runat="server" Text='<%# Eval("COUSE_DETAILS") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                  <asp:TemplateField HeaderText="search_value" HeaderStyle-Width="200px">
                        <ItemTemplate>
                            <asp:Label ID="detail1" runat="server" Text='<%# Eval("search_value") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="search_value" runat="server" Text='<%# Eval("search_value") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
                   </div>
            </div>
          </div>
        </div>
      
        </section>
    </form>
</body>
</html>

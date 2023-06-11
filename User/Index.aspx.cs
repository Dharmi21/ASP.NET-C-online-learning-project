using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning.User
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index.aspx");
        }

        protected void Aboutus_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AboutUs.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("/login.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning.MCQ
{
    public partial class gresult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            email.Text = Session["email"].ToString();
            score.Text = Session["right"].ToString();


        }
    }
}
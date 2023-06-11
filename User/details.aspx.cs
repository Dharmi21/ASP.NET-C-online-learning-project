using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Learning.User
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox1.Text = Session["role"].ToString();
        }

        

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "video")
            {
                Response.Redirect("video.aspx?CAT_ID=" + e.CommandArgument.ToString());
            }
            //LinkButton lb = (LinkButton)e.Item.FindControl("LinkButton2");
            //Session["lb"] = lb.Text;
        }
    }
}
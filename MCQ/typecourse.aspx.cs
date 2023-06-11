using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


namespace E_Learning.MCQ
{
    public partial class typecourse : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

       

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "typecourse")
            {
                Response.Redirect("typecourse.aspx?C_ID=" + e.CommandArgument.ToString());
            }
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            LinkButton l1 = ((LinkButton)e.Item.FindControl("LinkButton2"));
            Session["name"] = l1.Text;
           
            if (e.CommandName == "mcq")
            {
                Response.Redirect("exam_mcq.aspx?CAT_ID=" + e.CommandArgument.ToString());
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
            
            
            //foreach (DataListItem dataList in DataList2.Items)
            //{
            //    LinkButton A1 = dataList.FindControl("LinkButton2") as LinkButton;

            //    Session["cat"] = A1.Text;
            //}
        }
    }
}
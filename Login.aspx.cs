using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace E_Learning
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["role"] = user1.Text;
        }

        protected void check_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select count(*) from User_login where login_id='" + user.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            int i = Convert.ToInt16(cmd.ExecuteScalar());
            if (i == 1)
            {
                id1.Text = "not available";
            }
            else
            {
                id1.Text = "available";
            }
            con.Close();
        }

        protected void signup12_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into User_login (login_id,password) values('" + user.Text + "','" + pass1.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("user/homepage.aspx");
            con.Close();
        }

        protected void login12_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd5 = new SqlCommand("select count(*) from User_login where login_id='" + user1.Text + "' and password='" + password.Text + "' ", con);
            SqlCommand cmd = new SqlCommand("select count(*) from Admin_login where Email_id='" + user1.Text + "' and Password='" + password.Text + "' ", con);

            int i = Convert.ToInt16(cmd5.ExecuteScalar());
            int j = Convert.ToInt16(cmd.ExecuteScalar());
            if (i == 1)
            {
                Session["email"] = user1.Text;
               
                Response.Redirect("User/HomePage.aspx");


            }
            else if (j == 1)
            {
                Response.Redirect("Admin/index.aspx");
            }
            else if (i == 0 && j == 0)
            {
                string message = "Please Enter Valid Value";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            else
            {

                Session["role"] = "";
            }


            con.Close();
        }
    }
}
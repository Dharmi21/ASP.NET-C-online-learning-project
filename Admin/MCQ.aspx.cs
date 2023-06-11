using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Collections;

namespace E_Learning.Admin
{
    public partial class MCQ : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand("select * from COURSE", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                ddl_course.DataSource = dt;
                ddl_course.DataBind();

            }
        }

        protected void ddl_course_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_cat.Items.Clear();

            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from category where C_ID=" + ddl_course.SelectedItem.Value, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddl_cat.DataSource = dt;
            ddl_cat.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("insert into MCQ(C_ID,CAT_ID,QUESTION,O1,O2,O3,O4,ANSWER) values('" + ddl_course.SelectedValue + "','" + ddl_cat.SelectedValue + "','" + question.Text + "','" + o1.Text + "','" + o2.Text + "','" + o3.Text + "','" + o4.Text + "','" + answer.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            string message = "Your Record Have Been Saved Successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            con.Close();
        }
    }
}
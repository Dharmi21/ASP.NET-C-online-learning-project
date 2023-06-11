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
    public partial class exam_mcq : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["email"].ToString();
            Label4.Text = Session["name"].ToString();
            

            if (!IsPostBack)
            {
                ImageData();
            }
            if (Label1.Text == null)
            {
                Response.Redirect("../HomePage.aspx");
            }

        }
       
        protected void ImageData()
        {
            String catid = Request.QueryString["CAT_ID"];


            con = new SqlConnection(s);
            con.Open();
            cmd = new SqlCommand("select * from MCQ where CAT_ID='"+catid+"' ",con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                GridView1.DataSource = rd;
                GridView1.DataBind();
            }
            else
            {
                lbl_examshowwarning.Text = "Sorry! There is no exam in this subject";
            }

        }
    

       
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            int Correct = 0;
            int NotAnser = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label A1 = row.FindControl("Label3") as Label;

                Label ANSWER1 = row.FindControl("ANSWER") as Label;
                RadioButton r1 = row.FindControl("RadioButton1") as RadioButton;
                ANSWER1.Visible = true;
                A1.Visible = true;
                if (r1.Checked == true)
                {
                    if (r1.Text.Equals(ANSWER1.Text))
                    {
                        Label SA = row.FindControl("Label2") as Label;
                        SA.Text = "Selected Answer " + r1.Text.ToString() + " Is Right";
                        Correct += 1;
                        SA.ForeColor = System.Drawing.Color.Green;
                        

                    }
                    else
                    {
                        Label wrongans = row.FindControl("Label2") as Label;
                        wrongans.Text = "Selected Answer " + r1.Text.ToString() + " Is Wrong";
                    }
                }
                else
                {
                    NotAnser += 1;
                }


            }
           
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label ANSWER1 = row.FindControl("ANSWER") as Label;
                RadioButton r2 = row.FindControl("RadioButton2") as RadioButton;
                ANSWER1.Visible = true;
                if (r2.Checked == true)
                {
                    if (r2.Text.Equals(ANSWER1.Text))
                    {
                        Label SA = row.FindControl("Label2") as Label;
                        SA.Text = "Selected Answer " + r2.Text.ToString() + " Is Right";
                        Correct += 1;
                        SA.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        Label wrongans = row.FindControl("Label2") as Label;
                        wrongans.Text = "Selected Answer " + r2.Text.ToString() + " Is Wrong";
                    }
                }
            }
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label ANSWER1 = row.FindControl("ANSWER") as Label;
                RadioButton r3 = row.FindControl("RadioButton3") as RadioButton;
                ANSWER1.Visible = true;
                if (r3.Checked == true)
                {
                    if (r3.Text.Equals(ANSWER1.Text))
                    {
                        Label SA = row.FindControl("Label2") as Label;
                        SA.Text = "Selected Answer " + r3.Text.ToString() + " Is Right";
                        Correct += 1;
                        SA.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        Label wrongans = row.FindControl("Label2") as Label;
                        wrongans.Text = "Selected Answer " + r3.Text.ToString() + " Is Wrong";
                    }
                }
            }
            foreach (   GridViewRow row in GridView1.Rows)
            {
                Label ANSWER1 = row.FindControl("ANSWER") as Label;
                RadioButton r4 = row.FindControl("RadioButton4") as RadioButton;
                ANSWER1.Visible = true;
                if (r4.Checked==true)
                {
                    if (r4.Text.Equals(ANSWER1.Text))
                    {
                        Label SA = row.FindControl("Label2") as Label;
                        SA.Text = "Selected Answer " + r4.Text.ToString()+ " Is Right";
                        Correct += 1;
                        SA.ForeColor = System.Drawing.Color.Green;

                    }
                    else
                    {
                        Label wrongans = row.FindControl("Label2") as Label;
                        wrongans.Text = "Selected Answer " + r4.Text.ToString() + " Is Wrong";
                    }
                }
            }

            l1.Text = "You Get " + Correct+ " Marks";

           


        }

      
    }
}
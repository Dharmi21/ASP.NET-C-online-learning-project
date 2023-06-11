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

namespace E_Learning.Admin
{
    public partial class Detailsdata : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ImageData();
            }
        }
        protected void ImageData()
        {
            con = new SqlConnection(connStr);
            con.Open();
            da = new SqlDataAdapter("select * from C_DETAIL ", con);
            ds = new DataSet();
            da.Fill(ds);
            update.DataSource = ds;
            update.DataBind();
        }


        protected void update_RowEditing(object sender, GridViewEditEventArgs e)
        {
            update.EditIndex = e.NewEditIndex;
            ImageData();
        }

        protected void update_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string dId = update.DataKeys[e.RowIndex].Value.ToString();
            // find values for update
            TextBox C_ID = (TextBox)update.Rows[e.RowIndex].FindControl("C_ID");
            TextBox CAT_ID = (TextBox)update.Rows[e.RowIndex].FindControl("CAT_ID");
            TextBox LINK = (TextBox)update.Rows[e.RowIndex].FindControl("txt_link");
            FileUpload FileUpload1 = (FileUpload)update.Rows[e.RowIndex].FindControl("FileUpload1");
            TextBox DETAIL = (TextBox)update.Rows[e.RowIndex].FindControl("txt_detail");
            TextBox search_value = (TextBox)update.Rows[e.RowIndex].FindControl("search_value");

            con = new SqlConnection(connStr);
            string path = "~/photos/";
            if (FileUpload1.HasFile)
            {
                path += FileUpload1.FileName;
                //save image in folder
                FileUpload1.SaveAs(MapPath(path));
            }
            else
            {
                // use previous user image if new image is not changed
                Image img = (Image)update.Rows[e.RowIndex].FindControl("pho_to");
                path = img.ImageUrl;
            }
            SqlCommand cmd = new SqlCommand("update C_DETAIL set C_ID='" + C_ID.Text + "' ,CAT_ID='" + CAT_ID.Text + "',C_LINK='" + LINK.Text + "',C_PHOTO='" + path + "' ,COUSE_DETAILS='" + DETAIL.Text + "',search_value='" + search_value.Text + "' where D_ID=" + dId + "", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            update.EditIndex = -1;
            ImageData();
        }

       

        protected void update_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            GridViewRow row = (GridViewRow)update.Rows[e.RowIndex];

            con = new SqlConnection(connStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete FROM C_DETAIL where D_ID='" + Convert.ToInt32(update.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            ImageData();
        }

        protected void update_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            update.EditIndex = -1;
            ImageData();
        }
    }
}
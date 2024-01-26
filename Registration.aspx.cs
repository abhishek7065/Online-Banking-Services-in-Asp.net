using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Online_Banking_Services
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            Response.Clear();
            txtname.Text = "";
            txtEmail.Text = "";
            txtmob.Text = "";
            txtpass.Text = "";
            txtAnswer.Text = "";

        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
// Redirect login
        }

        protected void submitbtn_Click(object sender, EventArgs e)
        {
            //Register 
            duplicate();

        }
        void duplicate()
        {
            query = "chk_duplicate";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email_id", txtEmail.Text.Trim());
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if(dt.Rows.Count>0)
            {
                txtLabel.Text = "Email Id Already Exists";
            }
            else
            {
                Register();
            }
        }
        void Register()
        {
            query = "Register";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@Email_id", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Mobile", txtmob.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
            cmd.Parameters.AddWithValue("@securityquestionid", ddlsecurityquestion.SelectedValue);
            cmd.Parameters.AddWithValue("@Answer", txtAnswer.Text.Trim());
            con.Open();
           int r= cmd.ExecuteNonQuery();
            if(r>0)
            {
                //REdirect to Login
               // Response.Redirect("login.aspx");
            }
            txtLabel.Text = "Thank u for Registering with us";
            con.Close();
        }
    }
    
}
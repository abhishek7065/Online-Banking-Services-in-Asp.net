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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void forgetpass_Click(object sender, EventArgs e)
        {

        }
        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            query = "Userlogin";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email_id", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                txtlbl.Text = "Login Successful !";
            }
            else
            {
                txtlbl.Text = "Invalid Email id & password";
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            Response.Clear();
            txtEmail.Text = "";
            txtpass.Text = "";
        }
    }
}
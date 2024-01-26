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
    public partial class OpenAccount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlCommand cmd;
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblAccountno.Text = displayAccountno();
            }

        }
        string displayAccountno()
        {
            con = new SqlConnection(Common.getconnection());
            cmd=new SqlCommand(@"Select '123456789' + CAST( MAX(CAST( SUBSTRING( AccountNumber, 12, 50 ) AS INT)) +1 AS VARCHAR) 
           AS AccountNumber from Account",con);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            string accountNumber = string.Empty;
            if(sdr.Read())
            {
                accountNumber = sdr["AccountNumber"].ToString(); 
            }
            con.Close();
            return accountNumber;

        }

        protected void btnAccount_Click(object sender, EventArgs e)
        {
            query = "Accountdetails";
            cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@AccountNumber",lblAccountno.Text);
            cmd.Parameters.AddWithValue("@AccountType", lblAccounttype.Text);
            cmd.Parameters.AddWithValue("@FirstName",txtfirstname.Text.Trim());
            cmd.Parameters.AddWithValue("@LastName", txtlastname.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender", ddlgender.SelectedValue);
            cmd.Parameters.AddWithValue("@Mobile", txtmob.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Marital", ddlmarital.SelectedValue);
            cmd.Parameters.AddWithValue("@idno", txtAadhar.Text.Trim());
            cmd.Parameters.AddWithValue("@Father_name", txtfathername.Text.Trim());
            cmd.Parameters.AddWithValue("@Mother_name", txtmothername.Text.Trim());
            cmd.Parameters.AddWithValue("@Nominee", txtnominee.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtAddr.Text.Trim());
            cmd.Parameters.AddWithValue("@InitialAmount", txtAmount.Text.Trim());

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Account Opened Successfully')</script>");
            con.Close();
        }
        

        protected void cancelbtn_Click(object sender, EventArgs e)
        {

        }
    }
}
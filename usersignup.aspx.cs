using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace My_Salon
{
    public partial class signup : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shubham\source\repos\My_Salon\My_Salon\App_Data\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string q = "insert into user_signup(FullName,Email,Mobile,Username,Password,Cpassword,Gender) values('" + fname.Text + "','" + email.Text + "','" + mobile.Text + "','" + user.Text + "','" + pass.Text + "','" + cpass.Text + "','" + gender + "')";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("userlogin.aspx");
        }

        protected void male_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Male";
        }

        protected void female_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Female";
        }

        protected void other_CheckedChanged(object sender, EventArgs e)
        {
            gender = "Other";
        }
    }
}
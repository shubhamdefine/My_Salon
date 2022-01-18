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
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Shubham\source\repos\My_Salon\My_Salon\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            string q = "select count(1) from user_signup where Username='" + username.Text + "' AND Password='" + pass.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (count == 1)
            {
                //Session["username"] = user.Text;
                //Session["password"] = pass.Text;

                Response.Redirect("userhome.aspx");
            }
            else
            {
                Label1.Text = "Please Enter Valid Credentials...";

            }
        }
    }
}
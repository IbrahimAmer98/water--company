using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WEB_PROJECT_WATER_COMPANY
      //ibrahim amer 201611532    sec1
      //Neveen ishtaieh 201612338  sec1
      //israa farooq harazni 201611555  sec2

{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            SqlCommand cmd = new SqlCommand("select * from customers where name=@uname and password = @pwd", conn);
            cmd.Parameters.AddWithValue("uname",TextBox1.Text);
            cmd.Parameters.AddWithValue("pwd", TextBox2.Text);

            try
            {
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {  
                    Session["id"] = reader["Id"];
                    Session["name"] = reader["name"];
                    Session["email"] = reader["email"];
                    Session["phone"] = reader["phone"];
                    Session["password"] = reader["password"];
                
                    if (reader["name"].ToString() == "admin")
                    {
                        Response.Redirect("adminn.aspx");
                    } 
                    else
                    { Response.Redirect("home.aspx"); 
                    }
                }
                else
                    Label1.Text = "Invalid username or password";

                conn.Close();
                reader.Close();
            } catch(SqlException exp)
            {
                Label1.Text = exp.Message;

            }
        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SingUp.aspx");
        }
    }
}
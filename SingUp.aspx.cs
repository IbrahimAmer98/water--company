using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WEB_PROJECT_WATER_COMPANY
{
    public partial class registration1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                 
            }
            

        }
        public int get_emp_no1()
        {
            int eno = -1;
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                conn.Open();

                SqlCommand cmd = new SqlCommand("select max(id) as maxe from customers  ", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())

                    eno = (Int32.Parse(reader["maxe"].ToString()) + 1);

                conn.Close();
                reader.Close();

            }
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;
            }
            return eno;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (!checkuser()&&!checkemail())
            { 
                String x= get_emp_no1().ToString();
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                conn.Open();
                
                try
                {
                    SqlCommand cmd = new SqlCommand("insert into customers values(@id,@name,@email,@phone,@password)", conn);
                cmd.Parameters.AddWithValue("id", x);
                    cmd.Parameters.AddWithValue("name", TextBox2.Text);
                    cmd.Parameters.AddWithValue("email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("phone", TextBox4.Text);
                    cmd.Parameters.AddWithValue("password", TextBox5.Text);
                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        Response.Redirect("Login.aspx");
                    }
                    conn.Close();



                }
                catch (SqlException exp)
                {
                    Label1.Text = exp.Message;

                }

            }
            else
            { if(checkuser())
                Label1.Text = "this username already Token , Try other name";
                if (checkemail())
                    Label1.Text = "this email already used , Try other email";
                if (checkuser()&&checkemail())
                    Label1.Text = "this username and email already used , Try other name and email";
            }

        }
        bool checkuser()

        {
            bool s1 = false;
           

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            try
            {
                SqlCommand cmd = new SqlCommand("select * from customers where name=@uname ", conn);
                cmd.Parameters.AddWithValue("uname", TextBox2.Text);

                reader = cmd.ExecuteReader();
                
               
                if (reader.Read())


                 s1 = true; 


                else

                 s1 = false;
               

                reader.Close();
            }
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }
            conn.Close();
            
            return s1;
        }
        bool checkemail()

        {
            bool s1 = false;
            

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            try
            {
                SqlCommand cmd = new SqlCommand("select * from customers where email=@email ", conn);
                cmd.Parameters.AddWithValue("email", TextBox3.Text);

                reader = cmd.ExecuteReader();


                if (reader.Read())


                    s1 = true;


                else

                    s1 = false;

                reader.Close();
            }
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }
            conn.Close();
            
            return s1;
        }


    }
}
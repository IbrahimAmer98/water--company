using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEB_PROJECT_WATER_COMPANY
{
    public partial class update1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                
                if (Session["name"] == null)
                    Response.Redirect("login.aspx");
                else
                {
                   // TextBox1.Text = Session["id"].ToString();
                    TextBox2.Text = Session["name"].ToString();
                    TextBox3.Text = Session["email"].ToString();
                    TextBox4.Text = "0" + Session["phone"].ToString();
                    TextBox5.Text = Session["password"].ToString();
                    TextBox6.Text = Session["password"].ToString();
                   // Label1.Text = Session["id"].ToString() + Session["name"].ToString() + Session["email"].ToString() + Session["phone"].ToString() + Session["password"].ToString();


                }
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();

            if (!checkuser() && !checkemail()&&!checktheadmin())
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("update customers set name=@uname,email=@email , phone=@phone, password=@password where id=@id", conn);
                    cmd.Parameters.AddWithValue("id", Session["id"].ToString());
                    cmd.Parameters.AddWithValue("uname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("phone", TextBox4.Text);
                    cmd.Parameters.AddWithValue("password", TextBox5.Text);

                    int r = cmd.ExecuteNonQuery();
                    if (r > 0)
                    {
                        
                        Session["name"] = TextBox2.Text;
                       Session["email"]=  TextBox3.Text ;
                        Label1.Text = " updated Successfully";
                    }
                    conn.Close();



                }
                catch (SqlException exp)
                {
                    Label1.Text = exp.Message;

                }


            }
            else
            {
                if (!checkthesame())
                    Label1.Text = "this is not the same user";
                if (checktheadmin())
                    Label1.Text = "authentication error";
                if (checkuser())
                    Label1.Text = "this username already Token , Try other name";
                if (checkemail())
                    Label1.Text = "this email already used , Try other email";
                if (checkuser() && checkemail())
                    Label1.Text = "this username and email already used , Try other name and email";
            }
        }

            protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["name"].ToString() == "admin")
            {
                Response.Redirect("adminn.aspx");
            }
            else
            {
                Response.Redirect("home.aspx");
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
                SqlCommand cmd = new SqlCommand("select * from customers where name=@uname and  name!=@nname", conn);
                cmd.Parameters.AddWithValue("uname", TextBox2.Text);
                cmd.Parameters.AddWithValue("nname", Session["name"].ToString());

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
            bool s2 = false;

            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            try
            {
                SqlCommand cmd = new SqlCommand("select * from customers where email=@email and email!=@eemail", conn);
                cmd.Parameters.AddWithValue("email", TextBox3.Text);
                cmd.Parameters.AddWithValue("eemail", Session["email"].ToString());

                reader = cmd.ExecuteReader();


                if (reader.Read() )


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

            //if (checkthesame())
            //    s1 = false;

            return s1;
        }
        bool checkthesame()

        {
            bool s1 = false;
            bool s2 = false;
            bool s3 = false;



            if (TextBox3.Text == Session["email"].ToString())

            { s1 = true; }

            else

            { s1 = false; }
            if (TextBox2.Text == Session["name"].ToString())
            { s2 = true; }

            else

            { s2 = false; }


            s3 = s1 || s2;
            return s3;
        }
        bool checktheadmin()

        {
            bool s2 = false;
            



            
            if (TextBox2.Text !="admin" && Session["name"].ToString()=="admin")
            { s2 = true; }

            else

            { s2 = false; }


            
            return s2;
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
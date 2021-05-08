using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication4
{
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                
                if (Session["name"].ToString()!= "admin")
                    Response.Redirect("login.aspx");
                TextBox1.Text = genarateitemid() + "";


            }
        }


        int genarateitemid()
        {
            SqlConnection conn = null;
            SqlDataReader reader = null;
            int max=0;

            try
            {

                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                conn.Open();

                SqlCommand cmd = new SqlCommand("select max(itemid) as maxitemid from item", conn);
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    max = Int32.Parse(reader["maxitemid"].ToString()) + 1;

                }
                reader.Close();
            }
            catch (SqlException exp)
            {
                Label1.Text = exp.Message;

            }


            finally
            {

                conn.Close();


            }
            return max;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;

            if (!checkname())
            {
                try
                {

                    conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("insert into item values(@itemid, @itemname,@itemprice,@path)", conn);
                    cmd.Parameters.AddWithValue("itemid", TextBox1.Text);
                    cmd.Parameters.AddWithValue("itemname", TextBox2.Text);
                    cmd.Parameters.AddWithValue("itemprice", TextBox3.Text);
                    cmd.Parameters.AddWithValue("path", TextBox1.Text + ".jpg");
                    int r = cmd.ExecuteNonQuery();

                    if (FileUpload1.HasFile)
                    {
                        FileUpload1.SaveAs(@"C:/Users/user/Desktop/WEB PROJECT WATER COMPANY/WEB PROJECT WATER COMPANY/Image/" + TextBox1.Text + ".jpg");
                    }


                    if (r > 0)
                    {
                        Label1.Text = "New Item  of Id " + TextBox1.Text + "  Has Been added Sucessfuly!";
                        TextBox1.Text = genarateitemid() + "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";

                    }

                }
                catch (SqlException exp)
                {
                    Label1.Text = exp.Message;
                }
                finally
                {

                    conn.Close();
                }
            }
            else
            {
                if (checkname())
                    Label1.Text = "this Item name already Token , Try other name";
            }

            
        }
        bool checkname()

        {
            bool s1 = false;


            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            try
            {
                SqlCommand cmd = new SqlCommand("select * from item where itemname=@or ", conn);
                cmd.Parameters.AddWithValue("or", TextBox2.Text);

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminn.aspx");
        }
    } }


         
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication4
{
    public partial class adminn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"].ToString() != "admin")
                Response.Redirect("login.aspx");

            if (!IsPostBack)
            {
               
                
                //fillidcustumer();
                //filliditem();

            }
            }
            void fillidcustumer()
        {
                SqlConnection conn = null;
                SqlDataReader reader = null;


                try
                {

                    conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("select * from customers ", conn);


                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        DropDownList1.Items.Add(new ListItem(reader["Id"] + "", reader["Id"] + ""));
                    }
                    reader.Close();
                }
                catch (SqlException exp)
                {
                    Label1.Text = exp.Message;

                }
                finally
                { conn.Close(); }
            }
            void filliditem()
        {
                SqlConnection conn = null;
                SqlDataReader reader = null;


                try
                {

                    conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("select * from item ", conn);


                    reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        DropDownList2.Items.Add(new ListItem(reader["itemid"] + "", reader["itemid"] + ""));
                    }
                    reader.Close();
                }
                catch (SqlException exp)
                {
                    Label1.Text = exp.Message;

                }
                finally
                { conn.Close(); }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("insert.aspx");
        }

       

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
         {
            GridView1.DataBind();
           
            Image1.ImageUrl = "Image/" + DropDownList2.SelectedValue.ToString() + ".jpg";
       }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
            GridView2.DataBind();
            GridView3.DataBind();
            DropDownList1.DataBind();
            DropDownList2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }
    }
}
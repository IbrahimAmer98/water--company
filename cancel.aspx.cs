using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEB_PROJECT_WATER_COMPANY
{
    public partial class cancel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {

                
                Response.Redirect("login.aspx");

            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            int x = 0;


            try
            {
               
                

                   
                    conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                    conn.Open();


                    SqlCommand cmd = new SqlCommand("delete from [order] where orderid=@or", conn);
                    cmd.Parameters.AddWithValue("or",DropDownList1.SelectedValue);
          
                    int r = cmd.ExecuteNonQuery();

                    if (r > 0)
                    {
                    GridView1.DataBind();
                    DropDownList1.DataBind();

                        Label1.Text = "order has been canceled successfuly!";



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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("shope.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WEB_PROJECT_WATER_COMPANY
{
    
    public partial class shope : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["name"] != null)
            {
                Label1.Text = Session["name"].ToString();
               
                
            
            }
            else
                Response.Redirect("login.aspx");
            if (!IsPostBack)
            {
                fillItems();
                
                TextBox4.Text = genarateoid() + "";
                if (Session["ProductList"] == null)
                {
                    Session["ProductList"] = new ProductList();
                }
            }

            }
        void fillItems()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            SqlCommand cmd = new SqlCommand("select * from item", conn);


            try
            {
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    DropDownList1.Items.Add(new ListItem(reader["itemname"].ToString(), reader["itemid"].ToString()));

                 
                }
                conn.Close();
                reader.Close();
                
            }
            catch (SqlException exp)
            {
                Label2.Text = exp.Message;

            }
             reader = null;
            conn.Open();
            cmd = new SqlCommand("select * from item where itemid=@itemid", conn);
            cmd.Parameters.AddWithValue("itemid", DropDownList1.SelectedValue);

            try
            {
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {

                    TextBox2.Text = reader["itemprice"].ToString();
                    Image1.ImageUrl = "Image/" + reader["path"];
                    Session["item"] = new Item(Int32.Parse(reader["itemid"].ToString()), reader["itemname"].ToString(), Int32.Parse(reader["itemprice"].ToString()), reader["path"].ToString());

                }



                conn.Close();
                reader.Close();
            }
            catch (SqlException exp)
            {
                Label2.Text = exp.Message;

            }




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (Session["ProductList"] == null)
                Session["ProductList"] = new ProductList();

            ((ProductList)Session["ProductList"]).addItem(new ProductItem(((Item)Session["item"]), Int32.Parse(TextBox1.Text)));
            ListBox1.Items.Clear();
            

            ListAll();
        }
        void ListAll()
        {
    
            ListBox1.Items.Clear();
            int sum = 0;
            foreach (ProductItem p in ((ProductList)Session["ProductList"]).getProducts())
            {
                ListBox1.Items.Add(new ListItem(p.getItem().getName() + "\t" + p.getItem().getPrice() + "\t" + p.quantity, p.getItem().getItemID().ToString()));
                sum += p.getItem().getPrice() * p.quantity;
            }
            TextBox3.Text = sum + "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (((ProductList)Session["ProductList"]).Checkemp() == 1&&ListBox1.SelectedIndex!=-1)
            {
                ((ProductList)Session["ProductList"]).removeItem(((ProductList)Session["ProductList"]).getProductItem(Int32.Parse(ListBox1.SelectedValue)));
                ListAll();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;

            if (((ProductList)Session["ProductList"]).Checkemp() == 1)
            {
                try
                {
                    ListBox1.Items.Clear();
                    foreach (ProductItem p in ((ProductList)Session["ProductList"]).getProducts())
                    {


                        conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                        conn.Open();


                        SqlCommand cmd = new SqlCommand("insert into [order] values(@id, @oid,@itid,@q)", conn);
                        cmd.Parameters.AddWithValue("id", Session["id"].ToString());
                        cmd.Parameters.AddWithValue("oid", TextBox4.Text);
                        cmd.Parameters.AddWithValue("itid", p.getItem().getItemID().ToString());
                        cmd.Parameters.AddWithValue("q", p.quantity);
                        int r = cmd.ExecuteNonQuery();

                        if (r > 0)
                        {

                            Label2.Text = "order of id " + TextBox4.Text + " has been added successfuly!";
                            TextBox4.Text = genarateoid() + "";




                        }







                    }
                }
                catch (SqlException exp)
                {
                    Label2.Text = exp.Message;

                }


                finally
                {

                    conn.Close();
                    ((ProductList)Session["ProductList"]).removeall();

                    ListAll();
                }
            }
        }
        int genarateoid()
        {
            SqlConnection conn = null;
            SqlDataReader reader = null;
            int max = 0;

            try
            {

                conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
                conn.Open();

                SqlCommand cmd = new SqlCommand("select max(orderid) as maxitemid from [order]", conn);
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("cancel.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\conn.mdf;Integrated Security=True");
            conn.Open();
            SqlDataReader reader = null;
            SqlCommand cmd = new SqlCommand("select * from item where itemid=@itemid", conn);
            cmd.Parameters.AddWithValue("itemid", DropDownList1.SelectedValue);

            try
            {
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {

                    TextBox2.Text = reader["itemprice"].ToString();
                    Image1.ImageUrl = "Image/" + reader["path"];
                    Session["item"] = new Item(Int32.Parse(reader["itemid"].ToString()), reader["itemname"].ToString(), Int32.Parse(reader["itemprice"].ToString()), reader["path"].ToString());
                   
                }



                conn.Close();
                reader.Close();
            }
            catch (SqlException exp)
            {
                Label2.Text = exp.Message;

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}
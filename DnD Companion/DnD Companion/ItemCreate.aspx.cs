using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DnD_Companion
{
    public partial class ItemCreate : System.Web.UI.Page
    {
        string connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = ConfigurationManager.ConnectionStrings["items__"].ConnectionString;
            if (IsPostBack == true)
            { Label1.Visible = true; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InsertProduct();

        }

        int InsertProduct()
        {
            using (SqlConnection myConnection = new SqlConnection(connection))
            {
                SqlCommand MyCommand = new SqlCommand("INSERT INTO [dbo].[magic_items] ([Magic_Items_key], [Magic_Items_form], [Magic_Items_properties]) VALUES (@magicKey, @magicForm, @magicProp)", myConnection);
                MyCommand.Parameters.AddWithValue("@magicKey", TextBox1.Text);
                MyCommand.Parameters.AddWithValue("@magicForm", TextBox2.Text);
                MyCommand.Parameters.AddWithValue("@magicProp", TextBox3.Text);

                myConnection.Open();
                return MyCommand.ExecuteNonQuery();
            }
        }

    }
}
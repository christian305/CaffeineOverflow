using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DnD_Companion
{
    public partial class character_delete : System.Web.UI.Page
    {
        string connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = ConfigurationManager.ConnectionStrings["items__"].ConnectionString;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            delete();
            Label1.Text = "Character Deleted";
            ListBox1.DataBind();
        }

        int delete()
        {
            using (SqlConnection myConnection = new SqlConnection(connection))
            {
                SqlCommand MyCommand = new SqlCommand("DELETE FROM [dbo].[characters] WHERE [Character_name] = @name", myConnection);
                MyCommand.Parameters.AddWithValue("@name", ListBox1.SelectedItem.Text);
                
                myConnection.Open();
                return MyCommand.ExecuteNonQuery();
            }
        }
    }
}
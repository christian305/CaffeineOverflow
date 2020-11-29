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
    
    public partial class ItemList : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title = "Items";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = DropDownList1.SelectedIndex;
            Display();
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = DropDownList1.SelectedIndex;
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = 0;
            Display();

        }

        public void Display()
        {

            Label2.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[0].Text);
            Label3.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
            Label4.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            
        }

    }
}

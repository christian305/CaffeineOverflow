using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DnD_Companion
{
    public partial class SpellList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title = "Spells";
            /*  if (IsPostBack == true && DropDownList1.Items.Count < 40)
              {
                  SqlDataSource1.Select(DataSourceSelectArguments.Empty);
                  DropDownList1.DataSourceID = "";
                  DropDownList1.DataSource = SqlDataSource1;
                  DropDownList1.DataBind();
                  Button2.Text = DropDownList1.Items.Count.ToString();
              }
              */

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GridView1.SelectedIndex = DropDownList1.SelectedIndex;
            display();

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = 0;
            display();
        }

        public void display()
        {

            name_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[0].Text);
            Label1.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
            higher_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            page_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[3].Text);
            range_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[4].Text);
            components_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[5].Text);
            material_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
            ritual_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[7].Text);
            duration_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[8].Text);
            concentration_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[9].Text);
            casting_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[10].Text);
            level_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[11].Text);
            school_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[12].Text);
            class_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[13].Text);
            archetype_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[14].Text);
            circles_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[15].Text);
            domains_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[16].Text);
            oaths_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[17].Text);
            patrons_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[18].Text);

            if (higher_lbl.Text.Length < 2)
            {
                higher_lbl.Text = "N/A";
            }

            if (archetype_lbl.Text.Length < 2)
            {
                archetype_lbl.Text = "N/A";
            }

            if (material_lbl.Text.Length < 2)
            {
                material_lbl.Text = "N/A";
            }

            if (domains_lbl.Text.Length < 2)
            {
                domains_lbl.Text = "N/A";
            }

            if (patrons_lbl.Text.Length < 2)
            {
                patrons_lbl.Text = "N/A";
            }

            if (oaths_lbl.Text.Length < 2)
            {
                oaths_lbl.Text = "N/A";
            }

            if (circles_lbl.Text.Length < 2)
            {
                circles_lbl.Text = "N/A";
            }


        }
        /*
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string search = "SELECT * FROM[5e_SRD_Spells] WHERE[list_name] LIKE 'A%'";
            string normal = "SELECT * FROM [5e_SRD_Spells] ORDER BY [list_name]";
            string maybe = SqlDataSource1.SelectCommand;
            SqlDataSource1.SelectCommand = search;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            ListBox2.DataSourceID = "";
            ListBox2.DataSource = SqlDataSource1;
            ListBox2.DataBind();
            GridView1.DataSourceID = "";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.SelectCommand = normal;
            GridView1.SelectedIndex = 0;
            display();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string search = "SELECT * FROM[5e_SRD_Spells] WHERE[list_name] LIKE 'B%'";
            string normal = "SELECT * FROM [5e_SRD_Spells] ORDER BY [list_name]";
            string maybe = SqlDataSource1.SelectCommand;
            SqlDataSource1.SelectCommand = search;
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            ListBox2.DataSourceID = "";
            ListBox2.DataSource = SqlDataSource1;
            ListBox2.DataBind();
            GridView1.DataSourceID = "";
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            SqlDataSource1.SelectCommand = normal;
            
        }
        */

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = ListBox2.SelectedIndex;
            display();
        }


    }
}

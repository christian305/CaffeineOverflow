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

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = DropDownList1.SelectedIndex;
            display();

        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = 0;
            display();
        }

        public void display()
        {
            name_lbl.Text = GridView1.SelectedRow.Cells[0].Text;
            descript_lbl.Text = GridView1.SelectedRow.Cells[1].Text;
            higher_lbl.Text = GridView1.SelectedRow.Cells[2].Text;
            page_lbl.Text = GridView1.SelectedRow.Cells[3].Text;
            range_lbl.Text = GridView1.SelectedRow.Cells[4].Text;
            components_lbl.Text = GridView1.SelectedRow.Cells[5].Text;
            material_lbl.Text = GridView1.SelectedRow.Cells[6].Text;
            ritual_lbl.Text = GridView1.SelectedRow.Cells[7].Text;
            duration_lbl.Text = GridView1.SelectedRow.Cells[8].Text;
            concentration_lbl.Text = GridView1.SelectedRow.Cells[9].Text;
            casting_lbl.Text = GridView1.SelectedRow.Cells[10].Text;
            level_lbl.Text = GridView1.SelectedRow.Cells[11].Text;
            school_lbl.Text = GridView1.SelectedRow.Cells[12].Text;
            class_lbl.Text = GridView1.SelectedRow.Cells[13].Text;
            archetype_lbl.Text = GridView1.SelectedRow.Cells[14].Text;
            circles_lbl.Text = GridView1.SelectedRow.Cells[15].Text;
            domains_lbl.Text = GridView1.SelectedRow.Cells[16].Text;
            oaths_lbl.Text = GridView1.SelectedRow.Cells[17].Text;
            patrons_lbl.Text = GridView1.SelectedRow.Cells[18].Text;

        }
    }
}

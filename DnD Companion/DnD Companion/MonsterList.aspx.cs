﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DnD_Companion
{
    public partial class MonsterList : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title = "Monsters";


        }



        protected void GridView1_Load(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = 0;
            display();

        }


        public void display()
        {

            name_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[0].Text);
            meta_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[1].Text);
            armor_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[2].Text);
            hit_points_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[3].Text);
            speed_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[4].Text);
            str_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[5].Text);
            str_mob_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[6].Text);
            dex_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[7].Text);
            dex_mob_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[8].Text);
            con_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[9].Text);
            con_mob_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[10].Text);
            intellect_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[11].Text);
            intellect_mob_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[12].Text);
            wisdom_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[13].Text);
            wisdom_mob_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[14].Text);
            charisma_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[15].Text);
            charisma_mob_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[16].Text);
            saving_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[17].Text);
            skills_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[18].Text);
            senses_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[19].Text);
            language_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[20].Text);
            challenge_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[21].Text);
            traits_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[22].Text);
            action_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[23].Text);
            legendary_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[24].Text);
            Image1.ImageUrl = GridView1.SelectedRow.Cells[25].Text;
            damage_im_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[26].Text);
            condition_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[27].Text);
            damage_resist_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[28].Text);
            damage_vul_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[29].Text);
            reactions_lbl.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[30].Text);

            if (saving_lbl.Text.Length < 2)
            {
                saving_lbl.Text = "N/A";
            }
            if (skills_lbl.Text.Length < 2)
            {
                skills_lbl.Text = "N/A";
            }
            if (senses_lbl.Text.Length < 2)
            {
                senses_lbl.Text = "N/A";
            }
            if (language_lbl.Text.Length < 2)
            {
                language_lbl.Text = "N/A";
            }
            if (damage_im_lbl.Text.Length < 2)
            {
                damage_im_lbl.Text = "N/A";
            }
            if (condition_lbl.Text.Length < 2)
            {
                condition_lbl.Text = "N/A";
            }
            if (damage_resist_lbl.Text.Length < 2)
            {
                damage_resist_lbl.Text = "N/A";
            }
            if (damage_vul_lbl.Text.Length < 2)
            {
                damage_vul_lbl.Text = "N/A";
            }
            if (reactions_lbl.Text.Length < 2)
            {
                reactions_lbl.Text = "N/A";
            }
            if (legendary_lbl.Text.Length < 2)
            {
                legendary_lbl.Text = "N/A";
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = ListBox1.SelectedIndex;
            display();
        }
    }
}

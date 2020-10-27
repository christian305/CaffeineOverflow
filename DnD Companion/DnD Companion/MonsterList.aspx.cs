using System;
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



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string[] lbls = { name_lbl.Text, meta_lbl.Text, armor_lbl.Text }; 
            /*   for (int i = 0; i < 3; i++)
               {
                   lbls[i] = GridView1.SelectedRow.Cells[i].Text;             loop doesn't work yet
               }
             */
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
            meta_lbl.Text = GridView1.SelectedRow.Cells[1].Text;
            armor_lbl.Text = GridView1.SelectedRow.Cells[2].Text;
            hit_points_lbl.Text = GridView1.SelectedRow.Cells[3].Text;
            speed_lbl.Text = GridView1.SelectedRow.Cells[4].Text;
            str_lbl.Text = GridView1.SelectedRow.Cells[5].Text;
            str_mob_lbl.Text = GridView1.SelectedRow.Cells[6].Text;
            dex_lbl.Text = GridView1.SelectedRow.Cells[7].Text;
            dex_mob_lbl.Text = GridView1.SelectedRow.Cells[8].Text;
            con_lbl.Text = GridView1.SelectedRow.Cells[9].Text;
            con_mob_lbl.Text = GridView1.SelectedRow.Cells[10].Text;
            intellect_lbl.Text = GridView1.SelectedRow.Cells[11].Text;
            intellect_mob_lbl.Text = GridView1.SelectedRow.Cells[12].Text;
            wisdom_lbl.Text = GridView1.SelectedRow.Cells[13].Text;
            wisdom_mob_lbl.Text = GridView1.SelectedRow.Cells[14].Text;
            charisma_lbl.Text = GridView1.SelectedRow.Cells[15].Text;
            charisma_mob_lbl.Text = GridView1.SelectedRow.Cells[16].Text;
            saving_lbl.Text = GridView1.SelectedRow.Cells[17].Text;
            skills_lbl.Text = GridView1.SelectedRow.Cells[18].Text;
            senses_lbl.Text = GridView1.SelectedRow.Cells[19].Text;
            language_lbl.Text = GridView1.SelectedRow.Cells[20].Text;
            challenge_lbl.Text = GridView1.SelectedRow.Cells[21].Text;
            traits_lbl.Text = GridView1.SelectedRow.Cells[22].Text;
            action_lbl.Text = GridView1.SelectedRow.Cells[23].Text;
            legendary_lbl.Text = GridView1.SelectedRow.Cells[24].Text;
            Image1.ImageUrl = GridView1.SelectedRow.Cells[25].Text;
            damage_im_lbl.Text = GridView1.SelectedRow.Cells[26].Text;
            condition_lbl.Text = GridView1.SelectedRow.Cells[27].Text;
            damage_resist_lbl.Text = GridView1.SelectedRow.Cells[28].Text;
            damage_vul_lbl.Text = GridView1.SelectedRow.Cells[29].Text;
            reactions_lbl.Text = GridView1.SelectedRow.Cells[30].Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {



            /*  int hello = DropDownList1.Items.Count;
              string[] collect = new string [hello];
              for (int i = 0; i < 20; i++)

              {
                  collect[i] = DropDownList1.Items[i].Value.ToString();
              }
              string texttosearch = TextBox1.Text.ToLower();
              ListBox1.Visible = false;
              if (string.IsNullOrEmpty(texttosearch))
                  return;

              string[] result = (from i in collect
                                 where i.ToLower().Contains(texttosearch)
                                 select i).ToArray();
              if (result.Length == 0)
                  return;

              ListBox1.Items.Clear();
              ListBox1.Items.AddRange(result);
              ListBox1.Visible = true; */
        }


    }
}

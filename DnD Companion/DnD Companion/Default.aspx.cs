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
    public partial class Default : System.Web.UI.Page
    {
        string connection;
        int temp;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title = "Home";
            connection = ConfigurationManager.ConnectionStrings["items__"].ConnectionString;
            //TextBox48.Text = DropDownList1.Items.Count.ToString();
            if (IsPostBack == false)
            {
                DropDownList1.SelectedIndex = temp;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            temp = DropDownList1.SelectedIndex;
            bool exist = false;
            //DropDownList1.DataBind();
            //GridView1.DataBind();
            int checker = DropDownList1.Items.Count;
            //update_char();
            //TextBox48.Text = GridView1.SelectedRow.Cells[0].Text;
              for (int i = 0; i < checker; i++)
              {

                  GridView1.SelectedIndex = i;
                if (TextBox1.Text == GridView1.SelectedRow.Cells[0].Text)
                    exist = true;
                    update_char();
              }
              if (exist == false)
              {
                  character_create();
                  //something here to point dropdown list to new addition after click
              }
              
            SqlDataSource1.DataBind();
            GridView1.DataBind();
            DropDownList1.DataBind();
            if (IsPostBack == false)
            { GridView1.SelectedIndex = 0; }
            //display();
            DropDownList1.SelectedIndex = temp;
        }

        int character_create()
        {
            using (SqlConnection myConnection = new SqlConnection(connection))
            {
                SqlCommand MyCommand2 = new SqlCommand("INSERT INTO [dbo].[characters] ([Character_name], [race], [XP_points], " +
                "[background], [subrace], [class_level], [alignment], [strength], [dexterity], [constitution], [intelligence], [wisdom], " +
                "[charisma], [armor_class], [initiative], [speed], [current_hit], [temp_hit], [hit_dice], [person_traits], [ideals], " +
                "[bonds], [flaws], [strength2], [dexterity2], [constitution2], [intelligence2], [wisdom2], [charisma2], [acrobatics], [animal_hand], " +
                "[arcana], [athletics], [deception], [history], [insight], [intimidation], [investigation], [medicine], [nature], [perception], " +
                "[performance], [persuasion], [religion], [sleight_ofhand], [stealth], [survival], [blank_space]) " +
                "VALUES (@name, @race, @XP, @background, @subrace, @class_lvl, @alignment, @str, @dext, @cons, @intell, @wisdom," +
                " @charisma, @armor, @initiative, @speed, @current_hit, @temp_hit, @hit_dice, @traits, @ideals, @bonds, @flaws, @str2, @dext2, @con2," +
                " @intell2, @wisdom2, @charisma2, @acrobatics, @animal, @arcana, @athletic, @deception, @history, @insight, @intimidation, @investi, " +
                " @medicine, @nature, @perception, @performance, @persuasion, @religion, @sleight, @stealth, @survival, @blank)", myConnection);
                MyCommand2.Parameters.AddWithValue("@name", TextBox1.Text);
                MyCommand2.Parameters.AddWithValue("@race", TextBox2.Text);
                MyCommand2.Parameters.AddWithValue("@XP", TextBox6.Text);
                MyCommand2.Parameters.AddWithValue("@background", TextBox4.Text);
                MyCommand2.Parameters.AddWithValue("@subrace", TextBox3.Text);
                MyCommand2.Parameters.AddWithValue("@class_lvl", TextBox7.Text);
                MyCommand2.Parameters.AddWithValue("@alignment", TextBox5.Text);
                MyCommand2.Parameters.AddWithValue("@str", TextBox8.Text);
                MyCommand2.Parameters.AddWithValue("@dext", TextBox9.Text);
                MyCommand2.Parameters.AddWithValue("@cons", TextBox10.Text);
                MyCommand2.Parameters.AddWithValue("@intell", TextBox11.Text);
                MyCommand2.Parameters.AddWithValue("@wisdom", TextBox12.Text);
                MyCommand2.Parameters.AddWithValue("@charisma", TextBox13.Text);
                MyCommand2.Parameters.AddWithValue("@armor", TextBox14.Text);
                MyCommand2.Parameters.AddWithValue("@initiative", TextBox16.Text);
                MyCommand2.Parameters.AddWithValue("@speed", TextBox18.Text);
                MyCommand2.Parameters.AddWithValue("@current_hit", TextBox15.Text);
                MyCommand2.Parameters.AddWithValue("@temp_hit", TextBox17.Text);
                MyCommand2.Parameters.AddWithValue("@hit_dice", TextBox19.Text);
                MyCommand2.Parameters.AddWithValue("@traits", TextBox20.Text);
                MyCommand2.Parameters.AddWithValue("@ideals", TextBox21.Text);
                MyCommand2.Parameters.AddWithValue("@bonds", TextBox22.Text);
                MyCommand2.Parameters.AddWithValue("@flaws", TextBox23.Text);
                MyCommand2.Parameters.AddWithValue("@str2", TextBox24.Text);
                MyCommand2.Parameters.AddWithValue("@dext2", TextBox25.Text);
                MyCommand2.Parameters.AddWithValue("@con2", TextBox26.Text);
                MyCommand2.Parameters.AddWithValue("@intell2", TextBox27.Text);
                MyCommand2.Parameters.AddWithValue("@wisdom2", TextBox28.Text);
                MyCommand2.Parameters.AddWithValue("@charisma2", TextBox29.Text);
                MyCommand2.Parameters.AddWithValue("@acrobatics", TextBox30.Text);
                MyCommand2.Parameters.AddWithValue("@animal", TextBox31.Text);
                MyCommand2.Parameters.AddWithValue("@arcana", TextBox32.Text);
                MyCommand2.Parameters.AddWithValue("@athletic", TextBox33.Text);
                MyCommand2.Parameters.AddWithValue("@deception", TextBox34.Text);
                MyCommand2.Parameters.AddWithValue("@history", TextBox35.Text);
                MyCommand2.Parameters.AddWithValue("@insight", TextBox36.Text);
                MyCommand2.Parameters.AddWithValue("@intimidation", TextBox37.Text);
                MyCommand2.Parameters.AddWithValue("@investi", TextBox38.Text);
                MyCommand2.Parameters.AddWithValue("@medicine", TextBox39.Text);
                MyCommand2.Parameters.AddWithValue("@nature", TextBox40.Text);
                MyCommand2.Parameters.AddWithValue("@perception", TextBox41.Text);
                MyCommand2.Parameters.AddWithValue("@performance", TextBox42.Text);
                MyCommand2.Parameters.AddWithValue("@persuasion", TextBox43.Text);
                MyCommand2.Parameters.AddWithValue("@religion", TextBox44.Text);
                MyCommand2.Parameters.AddWithValue("@sleight", TextBox45.Text);
                MyCommand2.Parameters.AddWithValue("@stealth", TextBox46.Text);
                MyCommand2.Parameters.AddWithValue("@survival", TextBox47.Text);
                MyCommand2.Parameters.AddWithValue("@blank", TextBox48.Text);
                myConnection.Open();
                Label2.Text = "Character Created";
                return MyCommand2.ExecuteNonQuery();
                
            }
        }

        int update_char()
        {
            using (SqlConnection myConnection = new SqlConnection(connection))
            {
                SqlCommand MyCommand3 = new SqlCommand("INSERT INTO [dbo].[characters] ([Character_name], [race], [XP_points], " +
                "[background], [subrace], [class_level], [alignment], [strength], [dexterity], [constitution], [intelligence], [wisdom], " +
                "[charisma], [armor_class], [initiative], [speed], [current_hit], [temp_hit], [hit_dice], [person_traits], [ideals], " +
                "[bonds], [flaws], [strength2], [dexterity2], [constitution2], [intelligence2], [wisdom2], [charisma2], [acrobatics], [animal_hand], " +
                "[arcana], [athletics], [deception], [history], [insight], [intimidation], [investigation], [medicine], [nature], [perception], " +
                "[performance], [persuasion], [religion], [sleight_ofhand], [stealth], [survival], [blank_space]) " +
                "VALUES (@name, @race, @XP, @background, @subrace, @class_lvl, @alignment, @str, @dext, @cons, @intell, @wisdom," +
                " @charisma, @armor, @initiative, @speed, @current_hit, @temp_hit, @hit_dice, @traits, @ideals, @bonds, @flaws, @str2, @dext2, @con2," +
                " @intell2, @wisdom2, @charisma2, @acrobatics, @animal, @arcana, @athletic, @deception, @history, @insight, @intimidation, @investi, " +
                " @medicine, @nature, @perception, @performance, @persuasion, @religion, @sleight, @stealth, @survival, @blank)", myConnection);

                SqlCommand MyCommand2 = new SqlCommand("UPDATE[dbo].[characters] SET[race] = @race, [XP_points] = @XP, [subrace] = @subrace," +
                    " [background] = @background, [class_level] = @class_lvl, [alignment] = @alignment, [strength] = @str, [dexterity] = @dext, [constitution] = @cons, [intelligence] = @intell, [wisdom] = @wisdom, " +
                "[charisma] = @charisma, [armor_class] = @armor, [initiative] = @initiative, [speed] = @speed, [current_hit] = @current_hit, [temp_hit] = @temp_hit, [hit_dice] = @hit_dice, [person_traits] = @traits, [ideals] = @ideals, " +
                "[bonds] = @bonds, [flaws] = @flaws, [strength2] = @str2, [dexterity2] = @dext2, [constitution2] = @con2, [intelligence2] = @intell2, [wisdom2] = @wisdom2, [charisma2] = @charisma2, [acrobatics] = @acrobatics, [animal_hand] = @animal, " +
                "[arcana] = @arcana, [athletics] = @athletic, [deception] = @deception, [history] = @history, [insight] = @insight, [intimidation] = @intimidation, [investigation] = @investi, [medicine] = @medicine, [nature] = @nature, [perception] = @perception, " +
                "[performance] = @performance, [persuasion] = @persuasion, [religion] = @religion, [sleight_ofhand] = @sleight, [stealth] = @stealth, [survival] = @survival, [blank_space] = @blank WHERE ([Character_name] = @name) ", myConnection);
                MyCommand2.Parameters.AddWithValue("@name", TextBox1.Text);
                MyCommand2.Parameters.AddWithValue("@race", TextBox2.Text);
                MyCommand2.Parameters.AddWithValue("@XP", TextBox6.Text);
                MyCommand2.Parameters.AddWithValue("@background", TextBox4.Text);
                MyCommand2.Parameters.AddWithValue("@subrace", TextBox3.Text);
                MyCommand2.Parameters.AddWithValue("@class_lvl", TextBox7.Text);
                MyCommand2.Parameters.AddWithValue("@alignment", TextBox5.Text);
                MyCommand2.Parameters.AddWithValue("@str", TextBox8.Text);
                MyCommand2.Parameters.AddWithValue("@dext", TextBox9.Text);
                MyCommand2.Parameters.AddWithValue("@cons", TextBox10.Text);
                MyCommand2.Parameters.AddWithValue("@intell", TextBox11.Text);
                MyCommand2.Parameters.AddWithValue("@wisdom", TextBox12.Text);
                MyCommand2.Parameters.AddWithValue("@charisma", TextBox13.Text);
                MyCommand2.Parameters.AddWithValue("@armor", TextBox14.Text);
                MyCommand2.Parameters.AddWithValue("@initiative", TextBox16.Text);
                MyCommand2.Parameters.AddWithValue("@speed", TextBox18.Text);
                MyCommand2.Parameters.AddWithValue("@current_hit", TextBox15.Text);
                MyCommand2.Parameters.AddWithValue("@temp_hit", TextBox17.Text);
                MyCommand2.Parameters.AddWithValue("@hit_dice", TextBox19.Text);
                MyCommand2.Parameters.AddWithValue("@traits", TextBox20.Text);
                MyCommand2.Parameters.AddWithValue("@ideals", TextBox21.Text);
                MyCommand2.Parameters.AddWithValue("@bonds", TextBox22.Text);
                MyCommand2.Parameters.AddWithValue("@flaws", TextBox23.Text);
                MyCommand2.Parameters.AddWithValue("@str2", TextBox24.Text);
                MyCommand2.Parameters.AddWithValue("@dext2", TextBox25.Text);
                MyCommand2.Parameters.AddWithValue("@con2", TextBox26.Text);
                MyCommand2.Parameters.AddWithValue("@intell2", TextBox27.Text);
                MyCommand2.Parameters.AddWithValue("@wisdom2", TextBox28.Text);
                MyCommand2.Parameters.AddWithValue("@charisma2", TextBox29.Text);
                MyCommand2.Parameters.AddWithValue("@acrobatics", TextBox30.Text);
                MyCommand2.Parameters.AddWithValue("@animal", TextBox31.Text);
                MyCommand2.Parameters.AddWithValue("@arcana", TextBox32.Text);
                MyCommand2.Parameters.AddWithValue("@athletic", TextBox33.Text);
                MyCommand2.Parameters.AddWithValue("@deception", TextBox34.Text);
                MyCommand2.Parameters.AddWithValue("@history", TextBox35.Text);
                MyCommand2.Parameters.AddWithValue("@insight", TextBox36.Text);
                MyCommand2.Parameters.AddWithValue("@intimidation", TextBox37.Text);
                MyCommand2.Parameters.AddWithValue("@investi", TextBox38.Text);
                MyCommand2.Parameters.AddWithValue("@medicine", TextBox39.Text);
                MyCommand2.Parameters.AddWithValue("@nature", TextBox40.Text);
                MyCommand2.Parameters.AddWithValue("@perception", TextBox41.Text);
                MyCommand2.Parameters.AddWithValue("@performance", TextBox42.Text);
                MyCommand2.Parameters.AddWithValue("@persuasion", TextBox43.Text);
                MyCommand2.Parameters.AddWithValue("@religion", TextBox44.Text);
                MyCommand2.Parameters.AddWithValue("@sleight", TextBox45.Text);
                MyCommand2.Parameters.AddWithValue("@stealth", TextBox46.Text);
                MyCommand2.Parameters.AddWithValue("@survival", TextBox47.Text);
                MyCommand2.Parameters.AddWithValue("@blank", TextBox48.Text);
                myConnection.Open();
                Label2.Text = "Character updated";
                return MyCommand2.ExecuteNonQuery();

            }
        }
        
    

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            temp = DropDownList1.SelectedIndex;
            GridView1.SelectedIndex = DropDownList1.SelectedIndex;
            Label2.Text = "";
            display();
        }

        protected void GridView1_Load(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = 0;
            
            if (IsPostBack == false && DropDownList1.Items.Count > 0)
            {
                display();
            }
            //TextBox48.Text = DropDownList1.Items.Count.ToString();
        }

        void display()
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[0].Text; //name
            TextBox2.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[1].Text); //race
            TextBox6.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[2].Text); //xp
            TextBox4.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[3].Text); //background
            TextBox3.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[4].Text); //subrace
            TextBox7.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[5].Text); //class_level
            TextBox5.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[6].Text); //alignment
            TextBox8.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[7].Text); //str
            TextBox9.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[8].Text); //dext
            TextBox10.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[9].Text); //consti
            TextBox11.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[10].Text); //intell
            TextBox12.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[11].Text); //wisdom
            TextBox13.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[12].Text); //charisma
            TextBox14.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[13].Text); //armor_class
            TextBox16.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[14].Text); //intiative
            TextBox18.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[15].Text); //speed
            TextBox15.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[16].Text); //current_hit
            TextBox17.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[17].Text); //temp
            TextBox19.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[18].Text); //hit_dice
            TextBox20.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[19].Text); //traits
            TextBox21.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[20].Text); //ideals
            TextBox22.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[21].Text); //bonds
            TextBox23.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[22].Text); //flaws
            TextBox24.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[23].Text); //str2
            TextBox25.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[24].Text); //dext2
            TextBox26.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[25].Text); //const2
            TextBox27.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[26].Text); //intell2
            TextBox28.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[27].Text); //wisdom2
            TextBox29.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[28].Text); //charisma2
            TextBox30.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[29].Text); //acrobatics
            TextBox31.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[30].Text); //animal
            TextBox32.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[31].Text); //acana
            TextBox33.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[32].Text); //atheletics
            TextBox34.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[33].Text); //deception
            TextBox35.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[34].Text); //history
            TextBox36.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[35].Text); //insight
            TextBox37.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[36].Text); //intimidation
            TextBox38.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[37].Text); //investigation
            TextBox39.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[38].Text); //medicine
            TextBox40.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[39].Text); //nature
            TextBox41.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[40].Text); //perception
            TextBox42.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[41].Text); //performance
            TextBox43.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[42].Text); //persuasion
            TextBox44.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[43].Text); //religion
            TextBox45.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[44].Text); //sleight
            TextBox46.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[45].Text); //stealth
            TextBox47.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[46].Text); //survival
            TextBox48.Text = Server.HtmlDecode(GridView1.SelectedRow.Cells[47].Text); //blank

        }

        protected void DropDownList1_DataBound(object sender, EventArgs e)
        {
            if (IsPostBack == false && DropDownList1.Items.Count > 0)
            {
                GridView1.SelectedIndex = 0;
                display();
            }
            //TextBox48.Text = DropDownList1.Items.Count.ToString();

        }

        bool isChecked = false;
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            isChecked = RadioButton1.Checked;
        }

       

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            TextBox txt = sender as TextBox;
            //string temp = txt.Text;
            //Label2.Text = temp;
            txt.Font.Bold = true;
        }

        protected void clearBtn_Click(object sender, EventArgs e)
        {
            
            string name = TextBox1.Text;
            this.clearer(this);
            TextBox1.Text = name;
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {

        }

        private void clearer(Control boxes)
        {
            foreach (Control c in boxes.Controls)
            {
                var box = c as TextBox;
                if (box != null)
                {
                    box.Text = string.Empty;
                }
                this.clearer(c);
            }
        }
    }
}
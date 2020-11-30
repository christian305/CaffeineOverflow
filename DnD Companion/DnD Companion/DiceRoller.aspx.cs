using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TextBox = System.Web.UI.WebControls.TextBox;

namespace DnD_Companion
{
    public partial class DiceRoller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Header.Title = "Dice Roller";

            TextBox17.Text = "0";
            TextBox18.Text = "0";
            TextBox19.Text = "0";
            TextBox20.Text = "0";
            TextBox21.Text = "0";
            TextBox22.Text = "0";
            TextBox23.Text = "0";
            TextBox28.Text = "0";
            TextBox29.Text = "0";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox25.Text = "";
            TextBox28.Text = "0";
            TextBox29.Text = "0";

            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 5);
            int count = 0;

            if (TextBox1.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox1.Text.Trim());
                int NBR1 = Convert.ToInt32(TextBox1.Text.Trim());
                int[] array1 = new int[NBR1];
                int[] array2 = new int[NBR2];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);
                    count++;

                    TextBox17.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox17.Text) + (randomnumber))));
                    TextBox25.Text = TextBox17.Text + " + " + TextBox25.Text;
                }

                if (RadioButton1.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox17.Text))
                    {
                        TextBox17.Text = TextBox28.Text;
                    }
                }
                if (RadioButton2.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox17.Text))
                    {
                        TextBox17.Text = TextBox28.Text;
                    }

                }

                if (TextBox9.Text != "")
                {
                    TextBox17.Text = Convert.ToString(Convert.ToInt32(TextBox17.Text) + Convert.ToInt32(TextBox9.Text));
                    TextBox25.Text = TextBox17.Text + " + " + TextBox25.Text;
                }
            }
            else
            {
                TextBox17.Text = (Convert.ToString(randomnumber));

                if (TextBox9.Text != "")
                {
                    TextBox17.Text = Convert.ToString(Convert.ToInt32(TextBox17.Text) + Convert.ToInt32(TextBox9.Text));
                }

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 7);

            int count = 0;

            if (TextBox2.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox2.Text.Trim());
                int[] array2 = new int[NBR2];
                int NBR1 = Convert.ToInt32(TextBox2.Text.Trim());
                int[] array1 = new int[NBR1];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);
                    count++;

                    TextBox18.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox18.Text) + (randomnumber))));
                    TextBox25.Text = TextBox18.Text + " + " + TextBox25.Text;
                }

                if (RadioButton3.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox18.Text))
                    {
                        TextBox18.Text = TextBox28.Text;
                    }
                }
                if (RadioButton4.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox18.Text))
                    {
                        TextBox18.Text = TextBox28.Text;
                    }

                }

                if (TextBox10.Text != "")
                {
                    TextBox18.Text = Convert.ToString(Convert.ToInt32(TextBox18.Text) + Convert.ToInt32(TextBox10.Text));
                    TextBox25.Text = TextBox18.Text + " + " + TextBox25.Text; 
                }
                
            }
            else
            {
                TextBox18.Text = (Convert.ToString(randomnumber));

                if (TextBox10.Text != "")
                {
                    TextBox18.Text = Convert.ToString(Convert.ToInt32(TextBox18.Text) + Convert.ToInt32(TextBox10.Text));
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 9);

            int count = 0;

            if (TextBox3.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox3.Text.Trim());
                int[] array2 = new int[NBR2];
                int NBR1 = Convert.ToInt32(TextBox3.Text.Trim());
                int[] array1 = new int[NBR1];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);
                    

                    TextBox19.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox19.Text) + (randomnumber))));
                    TextBox25.Text = TextBox19.Text + " + " + TextBox25.Text;
                    
                    count++;
                }

                if (RadioButton5.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox19.Text))
                    {
                        TextBox19.Text = TextBox28.Text;
                    }
                }
                if (RadioButton6.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox19.Text))
                    {
                        TextBox19.Text = TextBox28.Text;
                    }

                }

                if (TextBox11.Text != "")
                {
                    TextBox19.Text = Convert.ToString(Convert.ToInt32(TextBox19.Text) + Convert.ToInt32(TextBox11.Text));
                    TextBox25.Text = TextBox19.Text + " + " + TextBox25.Text;
                }

            }
            else
            {
                TextBox19.Text = (Convert.ToString(randomnumber));

                if (TextBox11.Text != "")
                {
                    TextBox19.Text = Convert.ToString(Convert.ToInt32(TextBox19.Text) + Convert.ToInt32(TextBox11.Text));
                }

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 11);

            int count = 0;

            if (TextBox4.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox4.Text.Trim());
                int[] array2 = new int[NBR2];
                int NBR1 = Convert.ToInt32(TextBox4.Text.Trim());
                int[] array1 = new int[NBR1];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);


                    TextBox20.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox20.Text) + (randomnumber))));
                    TextBox25.Text = TextBox20.Text + " + " + TextBox25.Text;

                    count++;
                }

                if (RadioButton7.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox20.Text))
                    {
                        TextBox20.Text = TextBox28.Text;
                    }
                }
                if (RadioButton8.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox20.Text))
                    {
                        TextBox20.Text = TextBox28.Text;
                    }

                }

                if (TextBox12.Text != "")
                {
                    TextBox20.Text = Convert.ToString(Convert.ToInt32(TextBox20.Text) + Convert.ToInt32(TextBox12.Text));
                    TextBox25.Text = TextBox20.Text + " + " + TextBox25.Text;
                }

            }
            else
            {
                TextBox20.Text = (Convert.ToString(randomnumber));

                if (TextBox12.Text != "")
                {
                    TextBox20.Text = Convert.ToString(Convert.ToInt32(TextBox20.Text) + Convert.ToInt32(TextBox12.Text));
                }

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 13);

            int count = 0;

            if (TextBox5.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox5.Text.Trim());
                int[] array2 = new int[NBR2];
                int NBR1 = Convert.ToInt32(TextBox5.Text.Trim());
                int[] array1 = new int[NBR1];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);

                    TextBox21.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox21.Text) + (randomnumber))));
                    TextBox25.Text = TextBox21.Text + " + " + TextBox25.Text;

                    count++;
                }

                if (RadioButton9.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox21.Text))
                    {
                        TextBox21.Text = TextBox28.Text;
                    }
                }
                if (RadioButton10.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox21.Text))
                    {
                        TextBox21.Text = TextBox28.Text;
                    }

                }

                if (TextBox13.Text != "")
                {
                    TextBox21.Text = Convert.ToString(Convert.ToInt32(TextBox21.Text) + Convert.ToInt32(TextBox13.Text));
                    TextBox25.Text = TextBox21.Text + " + " + TextBox25.Text;
                }

            }
            else
            {
                TextBox21.Text = (Convert.ToString(randomnumber));

                if (TextBox13.Text != "")
                {
                    TextBox21.Text = Convert.ToString(Convert.ToInt32(TextBox21.Text) + Convert.ToInt32(TextBox13.Text));
                }

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 21);

            int count = 0;
            
            if (TextBox6.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox6.Text.Trim());
                int[] array2 = new int[NBR2];
                int NBR1 = Convert.ToInt32(TextBox6.Text.Trim());
                int[] array1 = new int[NBR1];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);


                    TextBox22.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox22.Text) + (randomnumber))));
                    TextBox25.Text = TextBox22.Text + " + " + TextBox25.Text;

                    count++;
                }

                if (RadioButton11.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox22.Text))
                    {
                        TextBox22.Text = TextBox28.Text;
                    }
                }
                if (RadioButton12.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox22.Text))
                    {
                        TextBox22.Text = TextBox28.Text;
                    }

                }

                if (TextBox14.Text != "")
                {
                    TextBox20.Text = Convert.ToString(Convert.ToInt32(TextBox20.Text) + Convert.ToInt32(TextBox14.Text));
                    TextBox25.Text = TextBox22.Text + " + " + TextBox25.Text;
                }

            }
            else
            {
                TextBox22.Text = (Convert.ToString(randomnumber));

                if (TextBox14.Text != "")
                {
                    TextBox22.Text = Convert.ToString(Convert.ToInt32(TextBox22.Text) + Convert.ToInt32(TextBox14.Text));
                }

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 101);

            int count = 0;

            if (TextBox7.Text != "")
            {
                int NBR2 = Convert.ToInt32(TextBox7.Text.Trim());
                int[] array2 = new int[NBR2];
                int NBR1 = Convert.ToInt32(TextBox7.Text.Trim());
                int[] array1 = new int[NBR1];

                foreach (int number in array1)
                {
                    Convert.ToString(randomnumber);

                    TextBox23.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox23.Text) + (randomnumber))));
                    TextBox25.Text = TextBox23.Text + " + " + TextBox25.Text;

                    count++;
                }

                if (RadioButton13.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox28.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox28.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox28.Text) >= Convert.ToInt32(TextBox23.Text))
                    {
                        TextBox23.Text = TextBox28.Text;
                    }
                }
                if (RadioButton14.Checked)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;

                        TextBox29.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox29.Text) + (randomnumber))));
                    }

                    if (Convert.ToInt32(TextBox29.Text) <= Convert.ToInt32(TextBox23.Text))
                    {
                        TextBox23.Text = TextBox28.Text;
                    }

                }

                if (TextBox15.Text != "")
                {
                    TextBox23.Text = Convert.ToString(Convert.ToInt32(TextBox23.Text) + Convert.ToInt32(TextBox15.Text));
                    TextBox25.Text = TextBox23.Text + " + " + TextBox25.Text;
                }

            }
            else
            {
                TextBox23.Text = (Convert.ToString(randomnumber));

                if (TextBox12.Text != "")
                {
                    TextBox23.Text = Convert.ToString(Convert.ToInt32(TextBox23.Text) + Convert.ToInt32(TextBox15.Text));
                }

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox9.Text = ""; 
            TextBox10.Text = "";
            TextBox11.Text = ""; 
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = ""; 
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = ""; 
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox25.Text = "";
            TextBox28.Text = "";
            TextBox29.Text = "";

        }
    }
    class RandomNumber
    {
        private readonly Random _random = new Random();

        public int RandomNumberGenerator(int min, int Max)
        {
            return _random.Next(min, Max);
        }
    }

}
           /*var generator = new RandomNumber();
             var randomnumber = generator.RandomNumberGenerator(1, 5);

             if (TextBox1.Text != "")
             {
                 TextBox17.Text = (randomnumber
                     + (Convert.ToInt32(TextBox1.Text.Trim()))
                     + (Convert.ToInt32(TextBox9.Text.Trim()))).ToString();
             }

             int i = 0;
             string nbr = TextBox1.Text;

                 var final = Convert.ToInt32(TextBox9) + Convert.ToInt32(randomnumber);
                 TextBox17.Text = Convert.ToString(randomnumber);
             */
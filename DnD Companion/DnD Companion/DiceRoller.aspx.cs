﻿using System;
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
            TextBox24.Text = "0";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 5);
            int count = 0;
            int i = 0;

            if (TextBox1.Text != "")
            {
                int NBR1 = Convert.ToInt32(TextBox1.Text.Trim());
                int[] array1 = new int[NBR1];

                if (Convert.ToInt32(TextBox1.Text.Trim()) < 999)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;
                        TextBox17.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox17.Text) + (randomnumber))));
                    }
                }
                else
                {
                    TextBox25.Text = TextBox25.Text + " Choose a Smaller Number";
                }
            }
            else
            {
                TextBox17.Text = (Convert.ToString(randomnumber));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 7);

            if (TextBox2.Text != "")
            {
                TextBox18.Text = (Convert.ToString(randomnumber));
            }
            else
            {
                TextBox18.Text = (Convert.ToString(randomnumber));

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 9);

            if (TextBox3.Text != "")
            {
                TextBox19.Text = (Convert.ToString(randomnumber));
            }
            else
            {
                TextBox19.Text = (Convert.ToString(randomnumber));

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 11);

            if (TextBox4.Text != "")
            {
                TextBox20.Text = (Convert.ToString(randomnumber));
            }
            else
            {
                TextBox20.Text = (Convert.ToString(randomnumber));

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 13);

            if (TextBox5.Text != "")
            {
                TextBox21.Text = (Convert.ToString(randomnumber));
            }
            else
            {
                TextBox21.Text = (Convert.ToString(randomnumber));

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 21);

            if (TextBox6.Text != "")
            {
                TextBox22.Text = (Convert.ToString(randomnumber));
            }
            else
            {
                TextBox22.Text = (Convert.ToString(randomnumber));

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 101);
            int count = 0;
            int i = 0;

            if (TextBox7.Text != "")
            {
                int NBR1 = Convert.ToInt32(TextBox7.Text.Trim());
                int[] array1 = new int[NBR1];

                if (Convert.ToInt32(TextBox7.Text.Trim()) < 999)
                {
                    foreach (int number in array1)
                    {
                        Convert.ToString(randomnumber);
                        count++;
                        TextBox23.Text = Convert.ToString(Convert.ToString((Convert.ToInt32(TextBox23.Text) + (randomnumber))));
                    }
                    
                    if (TextBox15.Text != "")
                    {
                        TextBox23.Text = Convert.ToString(Convert.ToInt32(TextBox23.Text) + Convert.ToInt32(TextBox15.Text));
                    }
                    else 
                    {
                        
                    } 
                }
                else 
                {
                    TextBox25.Text = TextBox25.Text + " Choose a Smaller Number";
                }
            }
            else
            {
                TextBox23.Text = (Convert.ToString(randomnumber));
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            int dice = Convert.ToInt32(TextBox26.Text);
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, (dice + 1));

            if (TextBox8.Text != "")
            {            
                TextBox24.Text = (Convert.ToString(randomnumber));
            }
            else
            {
                TextBox24.Text = (Convert.ToString(randomnumber));
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
            TextBox8.Text = "";
            TextBox9.Text = ""; 
            TextBox10.Text = "";
            TextBox11.Text = ""; 
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = ""; 
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = ""; 
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox26.Text = "";
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
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

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 5);

            
            int roll = 0;

            if (roll <= Convert.ToInt32(TextBox1.Text.Trim())) 
            {
                if (Convert.ToInt32(TextBox1.Text.Trim()) <= 999) 
                {
                    TextBox17.Text = Convert.ToString(randomnumber);
                    int number1 = randomnumber;

                    if (Convert.ToInt32(TextBox1.Text.Trim()) <= 999) 
                    {
                        TextBox17.Text = (Convert.ToString(randomnumber) + number1);
                    } 
                }
                else 
                {
                        TextBox25.Text = TextBox25.Text + "Please Write a Number less than 999"; 
                }

                roll++;
            }
            else if (TextBox1.Text == "")
            {
                TextBox25.Text = "Please Enter a Number to use this button";            }
            else
            {

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
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 9);

            if (TextBox3.Text != "")
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
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 13);

            if (TextBox5.Text != "")
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
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 101);

            if (TextBox7.Text != "")
            {
                TextBox23.Text = (Convert.ToString(randomnumber));
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumber();
            var randomnumber = generator.RandomNumberGenerator(1, 101);

            if (TextBox8.Text != "")
            {
                TextBox24.Text = (Convert.ToString(randomnumber));
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

            
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
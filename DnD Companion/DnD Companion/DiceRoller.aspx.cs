using System;
using System.Collections.Generic;
using System.Linq;
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

            
            TextBox17.Text = (randomnumber
                     + (Convert.ToInt32(TextBox1.Text.Trim()))
                     + (Convert.ToInt32(TextBox9.Text.Trim()))).ToString();
            /* var generator = new RandomNumber();
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

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

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
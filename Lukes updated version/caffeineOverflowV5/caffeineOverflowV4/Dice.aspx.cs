using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;

/*
 * Types of dices
 * THE D4 (Tetrahedron):
 * THE D6 (Cube)
 * THE D8 (Octahedron)
 * THE D10 (Pentagonal Trapezohedron)
 * THE D12 (Dodecahedron):
 * THE D20 (Icosahedron):
 */

namespace caffeineOverflowV4
{
    public partial class Dice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void roll_Click(object sender, EventArgs e)
        {
            var generator = new RandomNumberGenerator();
            if (DiceDropList.SelectedValue == "Icosahedron")
            {
                var randomNumber = generator.RandomNumber(1, 21);
                Response.Write($"Random number: {randomNumber}");
            }
            else if (DiceDropList.SelectedValue == "Dodecahedron")
            {
                var randomNumber = generator.RandomNumber(1, 13);
                Response.Write($"Random number: {randomNumber}");
            }
            else if (DiceDropList.SelectedValue == "Pentagonal Trapezohedron")
            {
                var randomNumber = generator.RandomNumber(1, 11);
                Response.Write($"Random number: {randomNumber}");
            }
            else if (DiceDropList.SelectedValue == "Octahedron")
            {
                var randomNumber = generator.RandomNumber(1, 9);
                Response.Write($"Random number: {randomNumber}");
            }
            else if (DiceDropList.SelectedValue == "Cube")
            {
                var randomNumber = generator.RandomNumber(1, 7);
                Response.Write($"Random number: {randomNumber}");
            }
            else if (DiceDropList.SelectedValue == "Tetrahedron")
            {
                var randomNumber = generator.RandomNumber(1, 5);
                Response.Write($"Random number: {randomNumber}");
            }
            else;
        }

        protected void DiceDropList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    public class RandomNumberGenerator
    {
        private readonly Random _random = new Random();

        public int RandomNumber(int Min, int Max)
        {
            return _random.Next(Min, Max);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;


namespace caffeineOverflowV4
{
    public partial class Dice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
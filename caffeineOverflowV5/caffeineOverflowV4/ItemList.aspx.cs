using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace caffeineOverflowV4
{
    public partial class ItemList : System.Web.UI.Page
    {
        public const string ItemsJson = @"caffeineOverflowV4\caffeineOverflowV4\json.json";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }

    public class item
    {
        public int id { get; set; }
        public string  type {get;set;}
        public string  rarity {get;set;}
        public string description { get; set; }
    }
}
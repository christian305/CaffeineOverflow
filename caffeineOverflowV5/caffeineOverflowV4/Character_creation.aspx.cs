using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace caffeineOverflowV4
{
    public partial class Character_creation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            MultiView1.ActiveViewIndex = Int32.Parse(e.Item.Value);
            
            for (int i = 0; i < Menu1.Items.Count; i++)
            {
                if (i == Int32.Parse(e.Item.Value))
                {
                    Menu1.Items[i].ImageUrl = "selectedtab.gif";
                }
                else
                {
                    Menu1.Items[i].ImageUrl = "unselectedtab.gif";
                }
            }
        }
    }
}
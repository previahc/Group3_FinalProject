using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group3_FinalProject
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AddNameToList("Heitor Previatti - Medium");
                AddNameToList("Jackson Leaphart - Easy");
                AddNameToList("Patience Huddleston - Hard");
            }
        }

        private void AddNameToList(string name)
        {
            ListItem item = new ListItem(name);
            nameList.Items.Add(item);
        }

    }
}
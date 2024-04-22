/*
# Name: Group 3
# email: previahc@mail.uc.edu leaphajp@mail.uc.edu huddlepec@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 4/23/24
# Course: IS 3050
# Semester/Year: Spring
# Brief Description: This project goes over the code for a web page that shows the solution to a LeetCode problem
Homepage with names of participants
# Citations: IS 3050, LeetCode
# Anything else that's relevant:    
*/

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
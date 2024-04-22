/*
# Name: Heitor Previatti - Group 3
# email: previahc@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 4/23/24
# Course: IS 3050
# Semester/Year: Spring
# Brief Description: This project goes over the code for a web page that shows the solution to a LeetCode problem
Transform an integer into a roman numeric.
# Citations: IS 3050, LeetCode
# Anything else that's relevant:    
*/
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group3_FinalProject
{
    public partial class MediumProblem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        public void ButtonSol_Click(object sender, EventArgs e)
        {
            int num;
            if (int.TryParse(txtInteger.Text, out num) && num > 0 && num < 4000)
            {
                string romanNumeral1 = IntToRoman(num);
                txtRoman.Text = romanNumeral1;

                lblErrorMessage.Text = "";
            }
            else
            {
                lblErrorMessage.Text = "Invalid input. Please enter a valid positive integer.";
            }

        }

        public string IntToRoman(int num)
        {

            if (num >= 1000) return "M" + IntToRoman(num - 1000);

            if (num >= 900) return "CM" + IntToRoman(num - 900);

            if (num >= 500) return "D" + IntToRoman(num - 500);

            if (num >= 400) return "CD" + IntToRoman(num - 400);

            if (num >= 100) return "C" + IntToRoman(num - 100);

            if (num >= 90) return "XC" + IntToRoman(num - 90);

            if (num >= 50) return "L" + IntToRoman(num - 50);

            if (num >= 40) return "XL" + IntToRoman(num - 40);

            if (num >= 10) return "X" + IntToRoman(num - 10);

            if (num >= 9) return "IX" + IntToRoman(num - 9);

            if (num >= 5) return "V" + IntToRoman(num - 5);

            if (num >= 4) return "IV" + IntToRoman(num - 4);

            if (num >= 1) return "I" + IntToRoman(num - 1);

            return "";
        }

        public void BindData()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Symbol", typeof(string));
            dt.Columns.Add("Value", typeof(int));

            dt.Rows.Add("I", 1);
            dt.Rows.Add("V", 5);
            dt.Rows.Add("X", 10);
            dt.Rows.Add("L", 50);
            dt.Rows.Add("C", 100);
            dt.Rows.Add("D", 500);
            dt.Rows.Add("M", 1000);
            
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}
/*
# Name: Jackson Leaphart - Group 3
# email: leaphajp@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 4/23/24
# Course: IS 3050
# Semester/Year: Spring
# Brief Description: This project looks at the easy problem from LeetCode, goes over two inputs
a ransom note and a magazine, and checks if you can create a ransom note using the letters from the magazine
# Citations: ChatGPT 3.5, IS 3050
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
    public partial class EasyProblem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCheck_Click(object sender, EventArgs e)
        {
            string ransomNote = txtRansomNote.Text;
            string magazine = txtMagazine.Text;

            Solution solution = new Solution();

            bool result = solution.CanConstruct(ransomNote, magazine);

            if (result)
            {
                lblResult.Text = "True";
            }
            else
            {
                lblResult.Text = "False";
            }
        }
        public class Solution
        {
            public bool CanConstruct(string ransomNote, string magazine)
            {
                var ransomNoteCounts = new Dictionary<char, int>();
                var magazineCounts = new Dictionary<char, int>();

                foreach (char ch in ransomNote)
                {
                    if (ransomNoteCounts.ContainsKey(ch))
                    {
                        ransomNoteCounts[ch]++;
                    }
                    else
                    {
                        ransomNoteCounts.Add(ch, 1);
                    }
                }

                foreach (char ch in magazine)
                {
                    if (magazineCounts.ContainsKey(ch))
                    {
                        magazineCounts[ch]++;
                    }
                    else
                    {
                        magazineCounts.Add(ch, 1);
                    }
                }

                foreach (KeyValuePair<char, int> pair in ransomNoteCounts)
                {
                    char ch = pair.Key;
                    int needed = pair.Value;
                    if (!magazineCounts.ContainsKey(ch) || magazineCounts[ch] < needed)
                    {
                        return false;
                    }
                }

                return true;
            }
        }
    }
}
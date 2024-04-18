using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group3_FinalProject
{
    public partial class HardProblem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlProblems.Items.Add(new ListItem("Hard Problem: Distribute Elements Equally"));
            }
        }

        protected void btnSolve_Click(object sender, EventArgs e)
        {
            if (ddlProblems.SelectedIndex == 0)
            {
                int[] nums = { 3, 4, 1, 2, 7, 5, 6 };
                int[] result = DistributeElements(nums);
                lblSolution.Text = string.Join(", ", result);
            }
        }

        public int[] DistibutionElements(int[] nums)
        {
            int n = nums.Length;
            List<int> arr1 = new List<int>();
            List<int> arr2 = new List<int>();

            arr1.Add(nums[0]);

            for (int i = 1; i < n; i++)
            {
                int count1 = GreaterCount(arr1.ToArray(), nums[i]);
                int count2 = GreaterCount(arr2.ToArray(), nums[i]);

                if (count1 > count2 || (count1 == count2 && arr1.Count <= arr2.Count))
                {
                    arr1.Add(nums[i]);
                }
                else
                {
                    arr2.Add(nums[i]);
                }
            }

            List<int> result = new List<int>(arr1);
            result.AddRange(arr2);
            return result.ToArray();
        }

        public int GreaterCount(int[] arr, int val)
        {
            int count = 0;
            foreach (int num in arr)
            {
                if (num > val)
                {
                    count++;
                }
            }
            return count;
        }

        protected System.Void ddlProblems_SelectedIndexChanged()
        {

        }
    }
}

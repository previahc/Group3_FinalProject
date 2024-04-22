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
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string numbersInput = txtNumbers.Text.Trim();
            if (!string.IsNullOrEmpty(numbersInput))
            {
                int[] nums = numbersInput.Split(',').Select(int.Parse).ToArray();
                int[] result = DistributeArray(nums);
                lblResult.Text = "Distributed Array: " + string.Join(", ", result);
            }
            else
            {
                lblResult.Text = "Please enter numbers separated by commas.";
            }
        }

        public int[] DistributeArray(int[] nums)
        {
            int n = nums.Length;
            int[] arr1 = new int[n / 2];
            int[] arr2 = new int[n - n / 2];

            // Initialize arr1 and arr2 with the first n/2 and remaining elements of nums, respectively
            for (int i = 0; i < n / 2; i++)
            {
                arr1[i] = nums[i];
            }
            for (int i = n / 2; i < n; i++)
            {
                arr2[i - n / 2] = nums[i];
            }

            for (int i = 2; i < n; i++)
            {
                int count1 = greaterCount(arr1, nums[i]);
                int count2 = greaterCount(arr2, nums[i]);

                if (count1 > count2)
                {
                    arr1 = append(arr1, nums[i]);
                }
                else if (count1 < count2)
                {
                    arr2 = append(arr2, nums[i]);
                }
                else
                {
                    if (arr1.Length <= arr2.Length)
                    {
                        arr1 = append(arr1, nums[i]);
                    }
                    else
                    {
                        arr2 = append(arr2, nums[i]);
                    }
                }
            }

            return arr1.Concat(arr2).ToArray();
        }

        private int greaterCount(int[] arr, int val)
        {
            return arr.Count(x => x > val);
        }

        private int[] append(int[] arr, int val)
        {
            int n = arr.Length;
            int[] newArr = new int[n + 1];
            Array.Copy(arr, newArr, n);
            newArr[n] = val;
            return newArr;
        }
    }
}
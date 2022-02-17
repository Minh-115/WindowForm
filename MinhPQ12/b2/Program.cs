using System;
using System.Linq;

namespace b2
{
   
    class Program
    {
        static public int FindMaxSubArray(int[] inputArray, int subLength)
        {
            int sum;
            int max = 0;
            for (int i = 0; i < inputArray.Length; i++)
            {
                var newArray = inputArray.Skip(i).Take(subLength).ToArray();
                sum = (int)newArray.Sum();
                if (max < sum)
                {
                    max = sum;
                }
                foreach (var item in newArray)
                {
                    Console.Write(item);
                    
                }
                Console.WriteLine();
            }
            return max;
        }
        static void Main(string[] args)
        {
            int[] a = { 1,2,5,-4,3};
          Console.WriteLine( "Max = "+ FindMaxSubArray(a,3));


        }
    }
}

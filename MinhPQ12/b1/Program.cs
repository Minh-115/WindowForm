using System;

namespace b1
{
    class Program
    {
        static public string GetArticleSummary(string content, int maxLength)
        {

            return  content.Substring(0, Math.Min(content.Length, maxLength))+ "..." ;
        }
        static void Main(string[] args)
        {
            Console.WriteLine("nhap noi dung ");
            string s = Console.ReadLine();
            Console.WriteLine("nhap do dai muon cut");
            int t =int.Parse(Console.ReadLine());
            Console.WriteLine( GetArticleSummary(s, t));
        }
    }
}

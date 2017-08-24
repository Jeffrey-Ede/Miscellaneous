/*
 * Created by SharpDevelop.
 * User: Jeffrey Ede
 * Date: 24/08/2017
 * Time: 10:03
 *
 */
using System;
using System.IO;
using System.Linq;

namespace Largest_product
{
	class Largest_product
	{
		public static void Main(string[] args)
		{
			using (StreamReader sr = new StreamReader("numbers.txt"))
			{
				string lines = "";
				// Read lines from file
				string line;
				while ((line = sr.ReadLine()) != null)
				{
					lines += line;
				}
				
				// Convert multiline number in file to integer array
				char[] ca = lines.ToCharArray();
				int[] ia = ca.Select(i => Int32.Parse(i.ToString())).ToArray();
				
				Console.WriteLine("Largest product: {0}", largest_product(ia, 13));
				Console.ReadKey();
			}
		}
		
		// Find the largest product of n consecutive numbers in an array
		private static Int64 largest_product(int[] ia, int n){
			// Find product of first n numbers
			Int64 product = 1;
			for(int i = 0; i < n; i++){
				product *= ia[i];
			}
			
			// Find largest product
			Int64 largest_prod = product;
			for(int j = 1; j <= ia.Length-n; j++){
				product = 1;
				for(int k = j; k < j+n; k++){
					product *= ia[k];
				}
				if(product > largest_prod){
					largest_prod = product;
				}
			}
			return largest_prod;
		}
	}
}
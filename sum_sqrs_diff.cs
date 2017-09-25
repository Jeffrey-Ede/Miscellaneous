/*
 * Created by SharpDevelop.
 * User: Jeffrey Ede
 * Date: 23/08/2017
 * Time: 15:31
 * 
 */

using System;
namespace SumSquaresDiff
{
	/*
	 * Sums squares of the numbers between 1 and 100, sums the numbers 
	 * and then squares and, finally, prints the difference
	 */ 
	
	class SumSqrsDiff
	{
		static void Main(string[] args)
		{
			int sum = 0;
			int sum_sqrs = 0;
			for (int i = 1; i <= 100; i++)
			{
				sum += i;
				sum_sqrs += i*i;
			}
			int diff = sum*sum-sum_sqrs;
			
			Console.WriteLine("Diff: {0}", diff);
			Console.ReadKey();
		}
	}
}
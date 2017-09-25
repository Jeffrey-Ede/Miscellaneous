/*
 * Created by SharpDevelop.
 * User: Jeffrey Ede
 * Date: 24/08/2017
 * Time: 10:03
 *
 */
using System;
using System.Collections; // For BitArray

namespace nth_prime
{
	class Program
	{
		public static void Main(string[] args)
		{
			Console.Write("Find nth prime: n = ");
			int n = Convert.ToInt32(Console.ReadLine());
			Console.WriteLine("nth prime= {0}", nth_prime(n));
			Console.ReadKey();
		}
		
		// Use sieve of Eratosthenes
		private static int nth_prime(int n){
			
			if(n == 1) return 2;
			if(n == 2) return 3;
			
			int primes = 2;
			
			int num = 3; bool prime;
			while(primes < n){
				num += 2; prime = true;
				for(int i = 2; i <= Math.Sqrt(num); i++){
					if(num%i == 0){
						prime = false;
						break;
					}
				}
				if(prime) primes++;
			}
			return num;
		}
	}
}
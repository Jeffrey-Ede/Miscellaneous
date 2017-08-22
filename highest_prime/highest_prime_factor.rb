#!/usr/bin/ruby -w

def highest_prime_factor(num)
	factors = Array.new()
	for i in 2..(num/2)
		
		# Check if number is divisible by i
		if num%i == 0
		
			# Check if number is prime
			new_prime = true
			factors.each do |j|
				if i%j == 0
					new_prime = false
					break
				end		
			end
			
			if new_prime
				factors << i
			end
		end
	end
	
	# Check if the number is itself the largest prime factor
	if factors.size == 0
		return num
	else
		return factors.last
	end
end

# Find the largest prime factor of 600851475143
puts highest_prime_factor 600851475143
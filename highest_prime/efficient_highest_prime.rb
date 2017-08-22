#!/usr/bin/ruby -w

def highest_prime_factor(num)
	highest = num
	for i in 2..num
		for j in 2..Math.sqrt(i)
			if j%i == 0
				break
			else
				while num%i == 0
					num /= i
					highest = i
				end
			end
		end
	end

return highest
end

# Find the largest prime factor of 600851475143
puts highest_prime_factor 600851475143
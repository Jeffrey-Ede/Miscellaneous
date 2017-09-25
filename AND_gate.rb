#!/usr/bin/ruby -w

class Compound_AND_gate
	# Supply default arguments so they do not all have to be supplied
	def initialize(inputs=Array.new(0), false_in=0.0, tol=0.01, true_out=5.0, false_out=0.0)
		@inputs = inputs
		@false_in = false_in
		@tol = tol
		@true_out = true_out
		@false_out = false_out
	end
	
	def output
		if @inputs.size > 0 # Only output true_out if input is supplied
			for input in @inputs
				if (input-@false_in).abs <= @tol
					return	@false_out
				end
			end
			return @true_out
		else
			return @false_out
		end
	end
end

# Create a compound AND gate and print its output
component = Compound_AND_gate.new(Array.[](1, 0.015, 4))
puts component.output
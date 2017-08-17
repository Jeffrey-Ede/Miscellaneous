#!/usr/bin/perl

package OR_gate;
sub new {
	my $ class = shift;
	
	# Class attributes. Default values follow the ||
	my $self = {
		_input1     => shift || 0,
		_input2     => shift || 0,
		_false_volt => shift || 0, # Voltage to accept as false, withing _tol
		_tol        => shift || 0,
		_true_out   => shift || 5, # Typically 5V for computers
		_false_out  => shift || 0, # Typically 0V for computers
	};
	bless $self, $class;
	return $self;
}
# Decide OR gate output
sub output{
	my ($self) = @_;
	$in1 = $self->{_input1};
	$in2 = $self->{_input2};
	$false = $self->{_false_volt};
	$tol = $self->{_tol};
	
	# OR gate functionality
	if(abs($in1-$false) > $tol or abs($in2-$false) > $tol){
		return $self->{_true_out};
	}else{
		return $self->{_false_out};
	}
}

# This line not needed as object is in the same file
# use OR_gate;

# Create the OR gate and print its output
$object = new OR_gate(0.06, 0, 0, 0.06);
$output = $object->output();
print "Output: $output V\n";
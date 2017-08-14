#!/usr/bin/perl

# A single-line comment

=begin comment
A
multiline
comment
=cut
$x = 11;
print "x = $x\n";
print 'x = $x';
print "\n\n";

$multiline_double = <<"EOF";
Multiline double
print
x = $x
EOF
print("$multiline_double\n");

$multiline_single = <<'EOF';
Multiline single
print
x = $x
EOF
print("$multiline_single\n");
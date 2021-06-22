use strict;
use warnings;
use 5.10.1;
use Math::Prime::Util qw (is_prime);

print "Enter an integer: ";
chomp ( my $check_for_prime = <STDIN> );

say "$check_for_prime is a prime." if is_prime($check_for_prime);

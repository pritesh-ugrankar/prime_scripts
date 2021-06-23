use strict;
use warnings;
use 5.10.1;
use Math::Prime::Util qw (is_prime);
use Test::More;

use FindBin::libs;
use MyPrime qw(is_conventional_prime);
for (1..100000) {
	is (  is_prime($_) , is_conventional_prime($_), "matches");
	
}
done_testing;

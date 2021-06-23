use strict;
use warnings;
use 5.10.1;
use bignum;


print "Enter the integer: ";
chomp (my $prime_candidate = <STDIN>) ;
exit if $prime_candidate <= 0 && say "$prime_candidate is not a prime.";
my $is_prime = 1;
foreach my $each_num (2..$prime_candidate) {
	if ($prime_candidate % $each_num == 0 && $prime_candidate - $each_num != 0 ) {
    say "$prime_candidate is not a prime";
    $is_prime = 0;
    exit;
  }
}

say "$prime_candidate is a prime " if  $is_prime != 0;

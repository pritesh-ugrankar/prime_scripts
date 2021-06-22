use strict;
use warnings;
use 5.10.1;


my $num = 731;

my $is_prime = 1;
foreach my $prime (2..$num) {
  if   ($num % $prime == 0 && $num - $prime != 0 ) {
    say "$num is not a prime because $num / $prime = ", $num / $prime;
    $is_prime = 0;
  }
}

say "$num is a prime " if  $is_prime != 0;

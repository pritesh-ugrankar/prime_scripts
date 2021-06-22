use strict;
use warnings;
use 5.10.1;
use bignum;


print "Enter the integer: ";
chomp (my $num = <STDIN>) ;
exit if $num ==1 && say "$num is not a prime.";
my $is_prime = 1;
foreach my $prime (2..$num) {
  if   ($num % $prime == 0 && $num - $prime != 0 ) {
    say "$num is not a prime";
    $is_prime = 0;
    exit;
  }
}

say "$num is a prime " if  $is_prime != 0;

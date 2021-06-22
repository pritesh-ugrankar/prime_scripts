use strict;
use warnings;
use 5.10.1;
use bignum;


sub is_prime {

  my $num = shift @_;
  my $is_prime = 1;
  if ($num == 1) {
    say "$num is not a prime.";
    exit;
  } 
  
  my @factors = (1, $num);
  foreach my $prime (2..$num) {
    if   ($num % $prime == 0 && $num - $prime != 0 ) {
      my $each_factor = $num / $prime;
      push @factors,  $each_factor;
      $is_prime = 0;
    }
  }
  
  say "$num is a prime. " if  $is_prime != 0;
  say "$num is not a prime. " if $is_prime == 0;
  say  "Factors  are: ", join ", ",  sort  { $a <=> $b } @factors;
}

print "Enter an integer: ";
chomp (my $check_if_prime = <STDIN>);
is_prime($check_if_prime);

use strict;
use warnings;
use 5.10.1;
use bignum;


say "Enter an integer: ";
chomp (my $num= <STDIN>);
my $is_prime = 1;
if ($num == 1) {
  say "$num is not a prime.";
  exit;
} 

my @factors = (1, $num);
foreach my $each_num (2..$num) {
  if   ($num % $each_num == 0 && $num - $each_num != 0 ) {
    my $each_factor = $num / $each_num;
    push @factors,  $each_factor;
    $is_prime = 0;
  }
}

say "$num is a prime. " if  $is_prime != 0;
say "$num is not a prime. " if $is_prime == 0;
say  "Factors  are: ", join ", ",  sort  { $a <=> $b } @factors;

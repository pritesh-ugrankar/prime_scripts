use strict;
use warnings;
use 5.10.1;


my $num = 731;

my $is_prime = 1;
foreach my $each_num (2..$num) {
  if   ($num % $each_num == 0 && $num - $each_num != 0 ) {
    say "$num is not a prime because $num / $each_num = ", $num / $each_num;
    $is_prime = 0;
  }
}

say "$num is a prime " if  $is_prime != 0;

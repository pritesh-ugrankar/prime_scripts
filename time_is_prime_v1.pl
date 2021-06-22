use strict;
use warnings;
use 5.10.1;
use Time::HiRes qw (gettimeofday tv_interval);


print "Enter the integer: ";
chomp (my $num = <STDIN>) ;
exit if $num ==1 && say "$num is not a prime.";
my $is_prime = 1;

my $start_time = [gettimeofday];
foreach my $prime (2..$num) {
  if   ($num % $prime == 0 && $num - $prime != 0 ) {
    say "$num is not a prime";
    $is_prime = 0;
    exit;
  }
}
my $elapsed_time = tv_interval($start_time);

say "$num is a prime " if  $is_prime != 0;
printf "The prime number check calcution took %2.2f seconds", $elapsed_time;

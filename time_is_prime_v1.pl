use strict;
use warnings;
use 5.10.1;
use bignum;
use Time::HiRes qw(gettimeofday tv_interval);

print "Enter the integer: ";
chomp (my $prime_candidate = <STDIN>) ;

exit if $prime_candidate <= 0 && say "$prime_candidate is not a prime.";
my $is_prime = 1;

my $start_time = [gettimeofday];
foreach my $each_num (2..$prime_candidate) {
	if ($prime_candidate % $each_num == 0 && $prime_candidate - $each_num != 0 ) {
    say "$prime_candidate is not a prime";
    $is_prime = 0;
    exit;
  }
}
my $elapsed_time = tv_interval($start_time);
say "$prime_candidate is a prime " if  $is_prime != 0;
printf "The [$0] script took %2.2f seconds to finish\n", $elapsed_time;

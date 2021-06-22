use strict;
use warnings;
use Time::HiRes qw (gettimeofday tv_interval);

my @bignum = (1..100000000);

my $native_map_start_time = [gettimeofday];
my @native_map = map { $_ * $_ } @bignum;
my $native_elapsed_time = tv_interval($native_map_start_time);

printf "The elapsed time with native map is %2.2f seconds\n", $native_elapsed_time;


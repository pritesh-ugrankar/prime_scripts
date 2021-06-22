use strict;
use warnings;
use 5.10.1;
use MCE::Map;
#max_workers => 2,
#chunk_size => 10,
#;

use Time::HiRes qw (gettimeofday tv_interval);

my $mce_start_time = [gettimeofday];
my @mce_map = mce_map_s { $_ * $_ }1, 100000000;
my $mce_elapsed = tv_interval($mce_start_time);

printf "The elapsed time with MCE::map (mce_map_s) is %2.2f seconds\n", $mce_elapsed;


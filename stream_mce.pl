use strict;
use warnings;
use MCE::Stream;
use Time::HiRes qw (gettimeofday tv_interval);

my $overall_start_time = [gettimeofday];
my $start_time_for_sub_calc = [gettimeofday];
 
sub calc {
   sqrt $_ * sqrt $_ / 1.3 * 1.5 / 3.2 * 1.07
}
my $elapsed_time_for_sub_calc = tv_interval($start_time_for_sub_calc);
printf "The calculation inside the sub calc took %2.2f seconds\n", $elapsed_time_for_sub_calc;
 
my $start_time_for_m4 = [gettimeofday];
#my @m4; mce_stream \@m4, sub { calc }, 1..1000000;
my @m4; mce_stream \@m4, sub { calc }, 1..59999999;
my $elapsed_time_for_m4 = tv_interval($start_time_for_m4);
printf "The calculation for array m4 took %2.2f seconds\n", $elapsed_time_for_m4;
 
   ## Completes in 0.272 secs. This is amazing considering the
   ## overhead for passing data between the manager and workers.
 
my $start_time_for_m5 = [gettimeofday];
#my @m5; mce_stream_s \@m5, sub { calc }, 1, 1000000;
my @m5; mce_stream_s \@m5, sub { calc }, 1, 59999999;
my $elapsed_time_for_m5 = tv_interval($start_time_for_m5);
printf "The calculation for array m5  took %2.2f seconds\n", $elapsed_time_for_m5;

my $overall_elapsed_time = tv_interval($overall_start_time);
printf "The  overall calculation took %2.2f seconds\n", $overall_elapsed_time;

 
   ## Completed in 0.176 secs. Like with mce_map_s, specifying a
   ## sequence specification turns out to be faster due to lesser
   ## overhead for the manager process.

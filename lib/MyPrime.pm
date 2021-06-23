package MyPrime;

use strict;
use warnings;

use Exporter qw(import);
our $VERSION = '0.001';
$VERSION = eval {$VERSION};
our @EXPORT_OK = qw (is_conventional_prime);

sub is_conventional_prime {

	my $prime_candidate = shift @_;

	if ( $prime_candidate <= 0 ) {
		#print "NOT a prime";
		return 0;
		exit;
	}
	#exit if $prime_candidate == 1 && print "not a prime.";
	exit if $prime_candidate == 1 && return 0;

  my $bool_is_prime = 1;

  foreach my $each_num (2..$prime_candidate) {

  	if ($prime_candidate % $each_num == 0 && $prime_candidate - $each_num != 0 ) {
      $bool_is_prime = 0;
			#return "NOT a prime";
			return 0;
      exit;
    }

  }
  
	#return "$prime_candidate IS a prime"  if  $bool_is_prime != 0;
	return 2 if  $bool_is_prime != 0;
}

1;



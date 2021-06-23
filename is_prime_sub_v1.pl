use strict;
use warnings;
use 5.10.1;
use bignum;

sub is_conventional_prime {

	my $prime_candidate = shift @_;

	if ( $prime_candidate <= 0 ) {
		#die "Only Natural Numbers (Positive integers greater than 0) are allowed. $!";
		say "not a prime";
		exit;
	}
	#exit if $prime_candidate == 1 && say "$prime_candidate is not a prime.";
	exit if $prime_candidate == 1 && say "not a prime.";

  my $bool_is_prime = 1;

  foreach my $each_num (2..$prime_candidate) {

  	if ($prime_candidate % $each_num == 0 && $prime_candidate - $each_num != 0 ) {
			#say "$prime_candidate is not a prime";
      $bool_is_prime = 0;
			return "not a prime";
      exit;
    }

  }
  
	#say "$prime_candidate is a prime " if  $bool_is_prime != 0;
	return "$prime_candidate is a prime"  if  $bool_is_prime != 0;
}



print "Enter a natural number: ";

chomp ( my $natural_number = <STDIN> );

say is_conventional_prime($natural_number);



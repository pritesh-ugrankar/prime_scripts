use warnings;
use strict;
use Term::ANSIColor;

my ($primer, $entered);
my $breakout = 0;

print "\nPrime numbers between 2 and your entered number.\n\n";
while ($breakout != 1)  {
    print "\nEnter a number: ";
    $entered = <STDIN>;
    chomp $entered;
    print "\n";

    if ($entered <= 2) {
        print "Your number must be greater than 2, try again.\n";
    } else {
        print color('red');
        print "Prime numbers between 2 and $entered are: ";
        print color('reset');
        for (my $x = 3; $x <= $entered; $x++) {
            my $y = 0;
            my $z = 0;
            while ($y <= $x) {
                $y++;
                if (($x % $y) == 0) {
                    $z++;
                }
            }
            if ($z < 3) {
                print "$x ";        
            }
        }
    print "\n\n";
    $breakout = 1;
    }
};

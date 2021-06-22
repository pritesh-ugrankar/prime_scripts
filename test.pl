use strict;
use warnings;

sub test_this {
  my ($sub_arg_ref) = @_;
  #my $first_name = $sub_arg_ref->{name} || "please provide first name";
  #my $last_name = $sub_arg_ref->{surname} || "please provide last name";
  #print "$first_name, $last_name\n";
  $sub_arg_ref->{name} ||= "please provide first name";
  $sub_arg_ref->{surname} ||= "please provide last name";
  print "$sub_arg_ref{name}, $sub_arg_ref{surname}";


};

test_this ({
		"name" => "Pritesh",
		#"surname" => "Ugrankar",
});

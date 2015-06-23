#!/usr/bin/env perl

use strict;

my $in = "qqqqq";
my $out = &qwerty($in);
print "$in\t$out\n";

sub qwerty {
	my $input_str = shift;
	my @input = split('', $input_str);
	
 	my $eng_uppercase = 'QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>';
	my $eng_lowercase = "qwertyuiop[]asdfghjkl;'zxcvbnm,.";
	
 	my $rus_uppercase = 'ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ';
	my $rus_lowercase = 'йцукенгшщзхъфывапролджэячсмитьбю';
	
 	my %dict;
	
 	my @eng = split('', join('', ($eng_uppercase, $eng_lowercase)));
	my @rus = split('', join('', ($rus_uppercase, $rus_lowercase)));
	
	# print scalar(@eng);
	
 	for (my $i = 0; $i < scalar(@eng); $i++) {
		$dict{$eng[$i]} = $rus[$i];
		# print "$i\t$eng[$i]\n";		
	}
	
	# foreach my $i (keys(%dict)) {
		# print "$i\t$dict{$i}\n";
	# }
	
 	# for (my $i = 0; $i < scalar(@rus); $i++) {
		# $dict{$rus[$i]} = $eng[$i];
	# }
	
 	my @output = ();
 	
	for (my $i = 0; $i < scalar(@input); $i++) {
		push(@output, $dict{$input[$i]});
	}
	
 	return join('', @output);
}
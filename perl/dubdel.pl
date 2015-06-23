#!/usr/bin/env perl

use strict;
use warnings;

my @list = ("9;21","2;31","12a;46","2;35","12;120","9;21");

#~ for(my $i = 0;$i < 10;$i++) {
	#~ my @randpair = (int(rand(10))+5,int(rand(10))+5);
	#~ push(@list,[@randpair]);
#~ }

&printl(@list);
print "###############\n";
@list = dubdel(@list);
&printl(@list);
print "###############\n";
@list = sort(@list);
&printl(@list);
print "###############\n";

sub dubdel {
	my @list = @_;
	my %hash;
	
	foreach my $i (@list) {
		$hash{$i} = 1;
	}
	
	@list = keys(%hash);
	return @list;
}

sub printl {
	my @list = @_;
	
	foreach my $i (@list) {
		my @pair = split(';',$i);
		print "$pair[0]\t$pair[1]\n";
	}
}

#!/usr/bin/env perl

use strict;
use warnings;

my $N = 30;
my $M = 5;

#~ 1234567 - 0 
#~ 123-567 - 1 4
#~ -23_5-7 - 2 16
#~ _23_-_7 - 3 5


my @list = ();
for(my $i = 1;$i < $N+1;$i++) {push(@list,$i);};

my @win;

my $curr = -1;
my $count = 0;


print "count\tcurr\titem\tloser\n";
while (1) {
	if (scalar(@list) < $M) {
		last();
	}
	$curr++;
	if ($curr == scalar(@list)) {
		$curr = 0;
	}
	$count++;
	print "$count\t$curr\t$list[$curr]\t";
	if ($count == $M) {
		$count = 0;
		print "$list[$curr]\t";
		splice(@list,$curr,1);
		$curr--;
	}
	print "\n";
}
print "winners: ";
print map $_." ",@list;
print "\n";

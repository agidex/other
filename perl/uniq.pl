#!/usr/bin/env perl

use strict;
use warnings;

my %hash;
open(my $f, 'data.txt');
while(my $line = <$f>) {
	$hash{$line} = 1;
}
close($f);
my $i = 0;
foreach my $item (sort(keys(%hash))) {
	print "$item";
}
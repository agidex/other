#!/usr/bin/env perl

use strict;
use warnings;

my $path = '/home/alex/programming/qt_projects/RedMail/src';

my $ext = 'cpp|h';

my $global_count = 0;

&process_dir($path);
print("total:\t$global_count\n");

sub process_dir {
	my $path = shift;
	opendir(my $handler, $path);
	while(my $item = readdir($handler)) {
		if ($item !~ /^(\.|\.\.)$/) {
			my $item_path = join('/', ($path, $item));
			# print "$item_path\n";
			if (-d($item_path)) {
				&process_dir($item_path);
			}
			else {
				if ($item_path =~ /^.+($ext)$/) {
					# print("$item_path\n");
					&count_lines($item_path);
				}
			}
		}
	}
	closedir($handler);
}

sub count_lines {
	my $file = shift;
	my $count = 0;
	open(my $handler, $file);
	while (my $line = <$handler>) {
		$count++;
	}
	close($handler);
	($file) = $file =~ /$path(.+)/;
	print ("$count\t$file\n");
	$global_count += $count;
}
#!/usr/bin/env perl

use Lingua::Translit;
use strict;
use warnings;

my $cyr = 'Школа №7';

my $tr = new Lingua::Translit("GOST 7.79 RUS");

#my $trn = &translit($cyr);
my $trn = $tr->translit($cyr);

print "$cyr\n$trn\n";

sub translit {
	my $text = $_[0];
	
	$text =~ s/а/a/g;
	$text =~ s/б/b/g;
	$text =~ s/в/v/g;
	$text =~ s/г/g/g;
	$text =~ s/д/d/g;
	$text =~ s/е/e/g;
	$text =~ s/є/ye/g;
	$text =~ s/ж/zh/g;
	$text =~ s/з/z/g;
	$text =~ s/и/i/g;
	$text =~ s/і/i/g;
	$text =~ s/ї/yi/g;
	$text =~ s/й/y/g;
	$text =~ s/к/k/g;
	$text =~ s/л/l/g;
	$text =~ s/м/m/g;
	$text =~ s/н/n/g;
	$text =~ s/о/o/g;
	$text =~ s/п/p/g;
	$text =~ s/р/r/g;
	$text =~ s/с/s/g;
	$text =~ s/т/t/g;	
	$text =~ s/у/u/g;
	$text =~ s/ф/f/g;
	$text =~ s/х/x/g;	
	$text =~ s/ц/tc/g;
	$text =~ s/ч/ch/g;
	$text =~ s/ш/sh/g;
	$text =~ s/щ/sch/g;
	$text =~ s/ь/\\'/g;
	$text =~ s/ю/yu/g;
	$text =~ s/я/ya/g;

	$text =~ s/А/A/g;
	$text =~ s/Б/B/g;
	$text =~ s/В/V/g;
	$text =~ s/Г/G/g;
	$text =~ s/Д/D/g;
	$text =~ s/Е/E/g;
	$text =~ s/Є/YE/g;
	$text =~ s/Ж/ZH/g;
	$text =~ s/З/Z/g;
	$text =~ s/И/I/g;
	$text =~ s/І/I/g;
	$text =~ s/Ї/YI/g;
	$text =~ s/Й/Y/g;
	$text =~ s/К/K/g;
	$text =~ s/Л/L/g;
	$text =~ s/М/M/g;
	$text =~ s/Н/N/g;
	$text =~ s/О/O/g;
	$text =~ s/П/P/g;
	$text =~ s/Р/R/g;
	$text =~ s/С/S/g;
	$text =~ s/Т/T/g;	
	$text =~ s/У/U/g;
	$text =~ s/Ф/F/g;
	$text =~ s/Х/H/g;	
	$text =~ s/Ц/TC/g;
	$text =~ s/Ч/CH/g;
	$text =~ s/Ш/SH/g;
	$text =~ s/Щ/SCH/g;
	$text =~ s/Ь/\\'/g;
	$text =~ s/Ю/YU/g;
	$text =~ s/Я/YA/g;
	
	return $text;
}

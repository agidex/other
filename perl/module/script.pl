#!/usr/bin/env perl

use strict;
use warnings;
use Math::Trig;
use modul;


#~ my $time = &getTime("hms");

#~ $time = join('',("0",1));

#~ print "$time\n";
#~ 
#~ my @list1 = (1,2,3,4);
#~ my @list2 = (2,3,4,5);
#~ 
#~ my @compared = &compare([@list1],[@list2]);
#~ print @compared;

sub compare {
	my $ref = shift(@_);
	my @list1 = @$ref;
	
	$ref = shift(@_);
	my @list2 = @$ref;
	
	my @compared = ();
	
	foreach my $i (@list1) {
		if ($i ~~ @list2) {
			push(@compared,$i);
		}
	}
	
	return @compared;
}

&wtf2dec("5045.0541");
print "\n50.750903\n";
&wtf2dec("2519.1929");
print "\n25.319882\n";

#~ converts coordinates from WTF format to decimal
sub wtf2dec {
	my $wtf = $_[0];
	
	my (($deg),($min),($dmin)) = $wtf =~ /^(\d{2})(\d{2})\.(\d{4})$/;
	
	$min = join('',($min,$dmin));
	
	#~ print "$deg\t$min\t$dmin\n";
	
	#~ my ($deg,$min) = @_;
	
	#~ my $dec = $deg 
	#~ + $min / 60
	#~ + $sec / 36000
	#~ + $dsec / 53651;

	my $dec = $deg
	+ $min / 600000;
	#~ + $dmin / 600000;
	#~ + $dsec / 996000;
	
	print "$dec\n";
	
	my $dec2 = sprintf("%.6f",$dec);
	
	print "$dec2\n";
	#~ return $dec;
}

sub pow {
	my $number = $_[0];
	my $power = $_[1];
	
	if ($number > 0) {
		return exp($power * log($number));
	}
	elsif ($number < 0) {
		$number = -$number;
		unless($power % 2) {
			return exp($power * log($number));
		}
		else {
			return -exp($power * log($number));
		}
	}
	else {
		return 0;
	}
}

#~ &distance(77.1539,-120.398,77.1804,129.55);


sub distance {
	my $llat1 = $_[0];
    my $llong1 = $_[1];
    my $llat2 = $_[2];
    my $llong2 = $_[3];
	
	my $radius = 6372795;
	
	my $lat1 = $llat1 * pi / 180;
    my $lat2 = $llat2 * pi / 180;
    my $long1 = $llong1 * pi / 180;
    my $long2 = $llong2 * pi / 180;
    
    my $cl1 = cos($lat1);
    my $cl2 = cos($lat2);
    my $sl1 = sin($lat1);
    my $sl2 = sin($lat2);
    
    my $delta = $long2 - $long1;
    my $cdelta = cos($delta);
    my $sdelta = sin($delta);
    
	my $y = sqrt(&pow($cl2 * $sdelta,2) + &pow($cl1 * $sl2 - $sl1 * $cl2 * $cdelta,2));
    my $x = $sl1 * $sl2 + $cl1 * $cl2 * $cdelta;
    
    my $ad = atan2($y,$x);
    my $dist = ($ad * $radius);
    
    print $dist;
	return $dist;
}

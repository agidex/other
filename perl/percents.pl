#!/usr/bin/env perl

use strict;
use warnings;

#~ my $N = 1000000;
#~ 
#~ my $Npoints = 100000;
#~ my $Pcount = 1;
#~ my $point = $N / $Npoints * $Pcount;
#~ 
#~ print " ";
#~ for(my $i = 0; $i <= $N;$i++) {
	#~ if ($i >= $point) {
		#~ my $percent = $i/$N*100;
		#~ print "\r$point\t$percent";
		#~ $point = $N / $Npoints * ++$Pcount;
		#~ sleep(1);
	#~ }
#~ }

my @arr = (1,2,5,6,7);

print map $_." ",@arr;
print "\n";

@arr = sort({$a <=> $b} @arr);

#~ print map $_." ",@arr;
#~ print "\n";



#~ my $prev = $arr[0];
#~ 
#~ my $count = 0;
#~ my @new;
#~ push(@new,$arr[0]);
#~ for(my $i = 1;$i < scalar(@arr)-1;$i++) {
	#~ my $next = $arr[$i+1];
	#~ my $curr = $arr[$i];
	#~ my $prev = $arr[$i-1];
#~ 
	#~ if (($curr == $prev+1) && ($curr == $next-1)) {
		#~ if ($count == 0) {
			#~ $count++;
			#~ push(@new,'-');
		#~ }
	#~ }
	#~ else{
		#~ $count = 0;
		#~ push(@new,$curr);
	#~ }
#~ }
#~ push (@new,$arr[$#arr]);
#~ 
#~ @arr = @new;
#~ @new = ();
#~ 
#~ push(@new,$arr[0]);
#~ for(my $i = 1;$i < scalar(@arr)-1;$i++) {
	#~ push(@new,$arr[$i]);
	#~ if ($arr[$i] !~ /^-$/) {
		#~ push(@new,',');
	#~ }
#~ }
#~ push(@new,$arr[$#arr]);
#~ 
#~ my $str = join('',@new);
#~ print "\n$str\n";

sub GenerateWeekdays {
        my $str = $_[0];

        my @old = split('', $str);
        @old = sort({$a <=> $b} @old);

        my $count = 0;
        my @new;
        push(@new, $old[0]);
        for(my $i = 1;$i <= $#old - 1;$i++) {
                my $next = $old[$i+1];
                my $curr = $old[$i];
                my $prev = $old[$i-1];

                if (($curr == $prev + 1) && ($curr == $next - 1)) {
                        if ($count == 0) {
                                $count++;
                                push(@new, '-');
                        }
                }
                else {
                        if ($count > 0) {
                                push(@new,$curr);
                                $count = 0;
                        }
                        else {
                                push(@new,',');
                                push(@new, $curr);
                        }
                }
        }

        my $last = $old[$#old];
        if ($count > 0) {
                push(@new,$last);
        }
        else {
                push(@new,',');
                push(@new,$last);
        }

        my $weekdays = join('', @new);

#        my $weekdays = join(',',sort({$a <=> $b} split('',$str)));

        return $weekdays;
}

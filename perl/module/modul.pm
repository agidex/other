package modul;

BEGIN {
	use Time::localtime;
	use Exporter();
	@ISA = "Exporter";
	@EXPORT = "&getTime";
}

sub getTime {
        my $format = $_[0];
        my @datetime = localtime(time);
        my $hour = int($datetime[0][2]);
        my $min = int($datetime[0][1]);
        my $sec = int($datetime[0][0]);

        if (defined($format)) {
                if ($format =~ /^[sS]$/) {
                        $sec += $min * 60 + $hour * 3600;
                        return $sec;
                }
                if ($format =~ /^[mM]$/) {
                        $min += $hour * 60;
                        return $min;
                }
                if ($format =~ /^(hms|HMS|h:m:s|H:M:S)$/) {
                        $hour = $hour > 9 ? $hour : join('',(0,$hour));
						$min = $min > 9 ? $min : join('',(0,$min));
                        $sec = $sec > 9 ? $sec : join('',(0,$sec));
                        my $hms = join(":",($hour,$min,$sec));
						return $hms;
                }
        }
        else {
                $sec += $min * 60 + $hour * 3600;
                return $sec;
        }
}

return 1;

END {}

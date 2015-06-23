#!/usr/bin/env perl
%file1 = &read_('file1.txt');
%file2 = &read_('file2.txt');

@out = ();

foreach $ip (keys(%file1)) {
	if (exists($file2{$ip})) {
		delete $file2{$ip};
		push(@out, "delete $ip");
		push(@out, "add $ip $file1{$ip}");
	}
	else {
		push(@out, "add $ip $file1{$ip}");
	}
}
map push(@out, "delete $_"), keys(%file2);

foreach $line (@out) {
	print "$line\n";
}

sub read_ {
	my $file = shift;
	my %file1_;
	open(my $fh, $file);
	my $line;
	while($line = <$fh>) {
		my ($ip, $arg) = $line =~ /^(.+)\s(.+)$/;
		$file1_{$ip} = $arg;
	}
	close($fh);
	return %file1_;
}
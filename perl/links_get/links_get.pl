use strict;
use warnings;

my $file_name = "files/file.html";

my @links;

my $file;
my $dir_path = 'files/';
opendir(my $dir,$dir_path);
	while ($file = readdir($dir)) {
		if (($file !~ /^(\.|\.\.)$/)) {
			# print "file: $file\n";
			my $filename = join('',($dir_path,$file));
			print "processing\t$filename\n";
			&process_file($filename);
		}
	}
closedir($dir);


#&process_file($file_name);
my @links2 = &fix(@links);
&write(@links2);

sub process_file {
	my $file_name = $_[0];
	
	my $line;
	my $link;
	my $title;
	my $len = 42;

	my $count = 0;

	open(my $file_handler,$file_name);
	while($line = <$file_handler>) {
		my $pos = index($line,'http://www.youtube.com/watch?v=');
		if ($pos > -1) {
			$link = substr($line,$pos,$len);
			push(@links,$link);
			
			# if (&is(@links,$link) == -1) {
				# push(@links,$link);
				# $count++;
			# }
		}
	}
	# print "\t$count\n";
	close($file_handler);
}

sub fix {
	my @arr = @_;
	my @new;
	
	foreach my $i (@arr) {
		if (&is(@new,$i) == -1) {
			push(@new,$i);
		}
	}
	return @new;
}

sub is {
	my $el = pop(@_);
	my @arr = @_;
	my $count = -1;
	
	foreach my $i (@arr) {
		$count++;
		if ($el =~ $i) {
			return $count;
		}
	}
	return -1;
}

sub write {
	my @list = @_;
	my $mode = '>';
	open(my $file_handler,$mode,'links.txt');
	foreach my $i (@list) {
		my $line = $i;
		print $file_handler "$line\n";
	}
	close($file_handler);
}
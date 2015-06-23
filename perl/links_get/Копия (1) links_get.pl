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
			print "processing\t$filename";
			&process_file_no_regexp($filename);
		}
	}
closedir($dir);


#&process_file($file_name);
&write(@links);

sub process_file {
	my $file_name = $_[0];
	
	my $line;
	my $link;
	my $title;

	my $count = 0;

	open(my $file_handler,$file_name);
	while($line = <$file_handler>) {
		
		if ($line =~ /.+\"http\:\/\/www\.youtube\.com\/watch\?v\=.+\".+/) {
			($link) = $line =~ /.+\"(http\:\/\/www\.youtube\.com\/watch\?v\=.+)\".+/;
			if (scalar(grep(/$link/,@links)) == 0) {
				push(@links,$link);
				$count++;
			}
			# print "$count\t$link\ttitle\n";	
		}
	}
	print "\t$count\n";
	close($file_handler);
}

sub process_file_no_regexp {
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
			my $result = &is(@links,$link);
			if ($result == -1) {
				push(@links,$link);
				$count++;
			}
		}
	}
	print "\t$count\n";
	close($file_handler);
}

sub write {
	my @links = @_;
	my $mode = '>';
	open(my $file_handler,$mode,'links.txt');
	foreach my $i (@links) {
		my $line = $i;
		print $file_handler "$line\n";
	}
	close($file_handler);
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
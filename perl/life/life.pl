use strict;
use warnings;
use Cwd;

my $MAPS_DIR = getcwd() . '/maps';

&init();

sub init {
	&inter();
}

sub inter {
	my %CMD_QUIT = map {$_ => 1} ("exit", "quit", "GTFO");
	my $CMD_MAPS = "maps";
	
	printf "This is the game called life\n";
	printf "print maps to see awailable maps";
	printf "\nand press ENTER \n";
	
	my $command;
	while (1) {
		$command = <STDIN>;
		chop($command);
		print "your command is $command\n";	
		
		#maps promt
		if ($command ~~ $CMD_MAPS) {
			print "awailable maps:\n";
			my %maps = &awailable_maps();
			foreach my $i (sort(keys(%maps))) {
				print "$i - $maps{$i}\n";
			}
			print "print the map number and press ENTER\n";
			my $map_number = <STDIN>;
			chop($map_number);
			my @map = &loadMap($maps{$map_number});
			&start();
		}

		#exit promt
		if ($CMD_QUIT{$command}) {
			print "EXITING\n";
			last;
		}
	}
}

sub awailable_maps {
	my %maps;
	my $count = 0;
	opendir(my $dir, $MAPS_DIR);
	while (my $dir_item = readdir($dir)) {
		next if ($dir_item eq '.' or $dir_item eq '..');
		my $map_name = $dir_item;
		$count++;
		$maps{$count} = $map_name;
	}
	closedir($dir);
	return %maps;
}


sub makeMap {
	my $rows = shift;
	my $cols = shift;
	
	my 
}

sub loadMap {
	my $map_path = shift;
	printf "loading the $map_path map\n";
	printf "please wait\n";
}

sub start {
	my @map = shift;
}
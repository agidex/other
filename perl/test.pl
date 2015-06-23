#!/usr/bin/env perl

use strict;
use warnings;
use Time::localtime;
use Data::Dumper;

my $shit = "Вто Окт  8 20:18:50 EEST 2013";
print $shit;
my ($time) = $shit =~ /\D+\s\D+\s+\d+\s(\d{1,2}:\d{1,2}:\d{1,2}).+/;
print "\n";
print $time;

# my $start = time();
# # `ping google.com`;
# my $finish = time();
# my $duration = $finish - $start;
# print "$duration\n";

# my $str = "|||| |";
# my $delimiter = "|";
# $delimiter = "\\$delimiter";
# my @words = split($delimiter, $str);
# print "initial string:\t$str\n";
# print "array items:\n";
# for (my $i = $[; $i <= $#words; $i++) {
	# my $word = $words[$i];
	# print "#$i\t$word\n";
# }
# my $len = scalar(@words);
# print "output array length:\t$len\n";

# &ReadLine('mak_base_info="makDB_info.txt"');

# sub ReadLine {
        # my $line = $_[0];

# # #         if ($line =~ /^mak_base_info\=\".+\"/) {
			# my ($item) = $line =~ /^mak_base_info\=\"(.+)\"/;
			# print "$item\n";
		# }

# # #         return 0;
# }

#~ my $text = " bill gates fucking asshole   ";
#~ 
#~ #print scalar split(" ",$text);
#~ 
#~ my @arr = (1,1,2,3,4,5,5,6);
#~ 
#~ my %freq = &freq(@arr);
#~ &hprint("foo",{%freq},"bar");

#~ my ($s1,$s2,$s3);
#~ $s1 = 1;
#~ $s2 = 2;
#~ 
#~ my @arr = ($s1,$s2,$s3);
#~ 
#~ map({defined($_)?$_:die "undefined"} @arr);


# sub freq {
	# my @arr = @_;
	# my %freq;
	
# # 	foreach my $i (@arr) {
		# if (exists($freq{$i})) {
			# $freq{$i}++;
		# }
		# else {
			# $freq{$i} = 1;
		# }
	# }
	
# # 	return %freq;
# }

# # sub hprint {
	# my $foo = $_[0];
	# my %hash = %{$_[1]};
	# my $bar = $_[2];
	
# # 	print "foo = $foo\tbar = $bar\n";
	
# # 	foreach my $i (sort(keys(%hash))) {
		# print "$i\t$hash{$i}\n";
	# }
# }

# my @text = ('MIME-Version: 1.0',
# 'Content-Type: multipart/alternative;',
# '	boundary="b1_47b3277641420a4301b2e88937e4a97d"',
# 'X-Spam: Not detected',
# 'X-Mras: Ok',
# '',
# 'X-Mru-Authenticated-Sender: hotrusclic@hotrusclick.com);');

# # my $count = 0;
# foreach my $line (@text) {
	# $count++;
	# print "$count\t";
	# if ($line =~ /.+boundary\=".+"/) {
		# my ($b) = $line =~ /.+boundary\="(.+)"/;
		# print "$b\t";
	# }
	# if ($line =~ /^$/) {
		# print "empty\t";
	# }
	# print "\n";
# }

# my $bool = 1;

# $bool?print "fuck you asshole":print "error";

# for(my $i = 666;$i > 350;$i -=15) {
	# print "$i\n";
# }

# # my @arr;

# # my %hash;

# # $hash{'lat'} = 25;
# $hash{'long'} = 50;

# # push(@arr,{%hash});
# push(@arr,{%hash});

# # foreach my $i (@arr) {
	# my %h = %{$i};
	# my $lat = $h{'lat'};
	# my $long = $h{'long'};
	# print "lat\t$lat\nlong\t$long\n";
# }


# my @arr = (3,21,21,19,41,37,37,49,57,62,77,88,107,109,99);

# # print map $_." ",@arr;
# print "\n";

# # @arr = sort({$a <=> $b} @arr);

# # @arr = &cut(@arr,7);

# # print map $_." ",@arr;
# print "\n";

# # sub cut {
    # my $count = pop(@_);
    # my @arr = @_;
    # my $times = scalar(@arr) - $count;
	
# # 	for(my $i = 0;$i < $times;$i++) {
		# pop(@arr);
	# }
    
# # 	return @arr;
# }

# my @arr = (1,2,3,4);;

# # my $n = 7;

# # if (scalar(grep(/$n/,@arr)) > 0) {
	# print "yes\n";
# }
# else {
	# print "no\n";
# }

# # print length "http://www.youtube.com/watch?v=9bZkp7q19f0";

# my @arr = (14,5,1,6,2,7,8,9,3);

# # print map $_." ",@arr;
# print "\n";

# # @arr = sort({$a <=> $b} @arr);

# # print map $_." ",@arr;
# print "\n";

# # my $count = 3;
# my $i;

# # my $todel = scalar(@arr) - $count;

# # for ($i = 0;$i < $todel;$i++) {
	# pop(@arr);
# }

# # 
# print map $_." ",@arr;
# print "\n";


# print length "http://www.surfmore.eu/nlc.php?id=252&user=soldier17";

# # my $prefix = "http://google.com";
# my $len = length($prefix) + 7;
# my $text = "sdjfk sfkj dkjbnf sklfksffhttp://google.com/search sfjhbs jfkjsnfkjasnfks sfsdfsdf ds";

# # my $pos = index($text,$prefix);
# my $link = substr($text,$pos,$len);

# # print $link;

# # sub s1 {
	# return (1,2);
# }

# # 
# print "\n";
# my @arr = &s1();

# # print @arr;

# my @arr = (
# [1,2],
# [3,4],
# [5,6]
# );

# # my @row = ("15a",10);

# # push(@arr,[@row]);

# # my $i;
# my $j;
# my $item;

# # for($i = 0;$i < scalar(@arr);$i++) {
	# for($j = 0;$j < 2;$j++){
		# # print "$arr[$i][$j]\t";
	# }
	# # print "\n";
# }

# # 
# @arr = (14,1,2,3,15);

# # print map $_."\t",@arr;
# print "\n";

# # @arr = sort({$a <=> $b} @arr);

# # print map $_."\t",@arr;
# print "\n";

# # 

# # my @array = (1,1,1,1,2,2,3,3,3);
# my %hash = &counts(@array);


# sub counts {
	# my @array = @_;
	# my $i;
	# my %hash;
	# foreach $i (@array) {
		# if (exists($hash{$i})) {
				# $hash{$i}++;
		# }
		# else {
				# $hash{$i} = 1;
		# }
	# }
	# return %hash;
# }


# # foreach $i (keys(%hash)) {
	# # print "$i\t$hash{$i}\n";
#}

# # #my @var;

# # #@var = ("bill","gates","fucking","asshole");

# # #$var = 5;

# # # &sub1(@var);

# # # # sub sub1 {
	# # my @arg1 = @_;
	# # my $i;
	# # foreach $i (@arg1) {
		# # if (defined($i)) {
			# # print "$i\n";
		# # }
		# # else {
			# # print "undeined var\n";
		# # }
	# # }
	# # print "sub1\n";
	# # return 0;
# # }

# # # my %dict;

# # # # $dict{"a"} = 1;
# # $dict{"b"} = 2;
# # $dict{"c"} = 3;

# # # # my @arr = ("a","b","c","d");
# # my $i;
# # my $item;

# # # # foreach $i (@arr) {
	# # if (exists($dict{$i})){
		# # $item = $dict{$i};
		# # print "$item\n";
	# # }
# # }

# # 
# # my $name = "26a";

# # # # print "$name\n";
# # if ($name =~ /\d+\D/){
	# # ($name) = $name =~ /(\d+)\D/;
	# # }
# # print "$name\n";

# # # my $time = &getTime;
# # print "$time";

# # # # sub getTime {
	# # my @str=localtime(time);
	# # my $hours = int($str[0][2]);
	# # my $min = int($str[0][1]);
	# # my $sec = int($str[0][0]);
	
# # # # 	$sec += $min * 60 + $hours * 3600;
	# # return $sec;
	# # }

# # 
# # my @arr;
# # my $i;

# # # # push(@arr,1);
# # push(@arr,2);
# # push(@arr,4);
# # push(@arr,3);

# # # # foreach $i (@arr) {
	# # print "$i\n";
# # }

# # # my $var1;
# # my $var2;

# # # # $var1 = 3.14;
# # $var2 = "pi";

# # # # print "$var1\t$var2\n";

# # # # sub mysub {
	# # my $var1;
	# # my $var2;
	# # $var1 = 65476576;
	# # $var2 = "sdfkudughdkugkif";
	# # print "$var1\t$var2\n";	
# # }

# # # # &mysub();

# # # # print "$var1\t$var2\n";

# # 
# #my @arr1 = (1,2,3);
# # my @arr2 = (4,5,6);
# # my $i;
# # my $j;

# # # # my @arr3;

# # # # $arr3[0] = @arr1;
# # $arr3[1] = @arr2;

# # # # for ($i = 0;$i < scalar(@arr3);$i++){
	# # for ($j = 0;$j < scalar($arr3[$i]);$j++){
		# # print "$arr3[$i,$j]\t";
	# # }
	# # print "\n";
# # }

# # # &Print(@arr1);

# # # # sub Print {
	# # my @arr = @_;
	# # print "@arr";
# # }

# # 

# # #my $time = 5173;
# #my $str = &toHMS($time);
# #print $str;

# # sub toHMS {
	# my $time = $_[0];
	# my $hours = int($time / 3600);
	# $time -= $hours * 3600;
	# my $min = int($time / 60);
	# $time -= $min * 60;
	# my $sec = $time;
	
# # 	my $timeHMS = join(':',($hours>9?$hours:join('',('0',$hours)),$min>9?$min:join('',('0',$min)),$sec>9?$sec:join('',('0',$sec))));
	# return $timeHMS;
	# }

# # 

# # 

# # 

# # 

# # 

# # 

# # 
# #my $crd_str = "17543.1704";
# #&toDec($crd_str);
# sub toDec {
	# my $coord_str = $_[0];
	# my $deg;
	# my $min;
	# my $sec;
	# my $ret_val;
	# ($deg, $min, $sec) = $coord_str =~ /(\d+)(\d\d)\.(\d\d\d\d)/;		
	# print "input: $coord_str\ndeg:\t$deg\nmin:\t$min\nsec:\t$sec\n"
	# }

# # # my $val1 = "26a";
# # my $val2 = "26a";
# # my $lol;

# # # # if ($val1 =~ $val2){
	# # $lol = "==";
	# # }
# # else {
	# # $lol = "!=";
	# # }
# # print "$val1 $lol $val2\n";

# # my %hash = (
	# '1' => 'a',
	# '2' => 'b',
	# '3' => 'c',
# );

# # # foreach my $i (%hash){
	# # print "$i\n";
# # }

# # my @tables = (
		# "dinners", 
		# "graphs", 
		# "move_on_map", 
		# "route_calc_init_data", 
		# "route_calc_schedules", 
		# "routes", 
		# "schedules", 
		# "stations", 
		# "stations_scenario"
		# );

# # 
# # my $route = "10";
# #my $query = "SELECT id, name FROM stations WHERE id IN (SELECT stations_id FROM stations_scenario WHERE routes_id IN (SELECT id FROM routes WHERE name = $route) ORDER BY stations_scenario.number)";

# # #my $query = "SELECT stations_scenario.number, stations_scenario.stations_id, stations.name FROM stations_scenario, stations WHERE routes_id = (SELECT id FROM routes WHERE name = $route), stations_scenario.stations_id = stations.id";

# # 
# # my $query = "(SELECT stations_id FROM stations_scenario WHERE routes_id = (SELECT id FROM routes WHERE name = $route) ORDER BY number)";
# #my $query = "SELECT id, name FROM stations WHERE id IN (SELECT stations_id FROM stations_scenario WHERE routes_id IN (SELECT id FROM routes WHERE name = $route) ORDER BY number)";

# # 
# #my $query = "SELECT id, name FROM stations WHERE id IN (SELECT stations_id FROM stations_scenario WHERE routes_id IN (SELECT id FROM routes WHERE name = $route) ORDER BY stations_scenario.number)";

# # #my $query = "SELECT stations_scenario.number, stations_scenario.stations_id, stations.name FROM stations_scenario, stations WHERE routes_id = (SELECT id FROM routes WHERE name = $route), stations_scenario.stations_id = stations.id";

# # 
# #my $query = "(SELECT stations_id, number FROM stations_scenario WHERE routes_id = (SELECT id FROM routes WHERE name = $route) ORDER BY number)";
# #####
# # my $query = "SELECT number, name FROM stations_scenario INNER JOIN stations ON stations_scenario.stations_id = stations.id WHERE routes_id = (SELECT id FROM routes WHERE name = $route)";
# #####
# #my $query = "SELECT id, name FROM stations WHERE id IN (SELECT stations_id FROM stations_scenario WHERE routes_id IN (SELECT id FROM routes WHERE name = $route) ORDER BY number)";

# # #my $route = $ARGV[0] == 0?"11":$ARGV[0];
# #my $route = "11";
# #my $route_id = &getRouteId($route);
# #print "route: $route\troute_id: $route_id\n";
# #extract list of stations for $route
# #my $query = "SELECT number, latitude, longitude, name FROM stations_scenario INNER JOIN stations ON stations_scenario.stations_id = stations.id WHERE routes_id = $route_id ORDER BY number";
# #my $query = "SELECT routes.name, start_time, start_station_id, end_station_id, dinner_station_id FROM route_calc_init_data INNER JOIN routes ON route_calc_init_data.routes_id = routes.id";

# # #my $query = "SELECT Id, graphs_number, flights_number, time, stations_id, stations_scenario_id, number, duration_flight FROM route_calc_schedules ORDER BY stations_id LIMIT 1000";
# #$query = "SELECT graphs_number, flights_number, time, stations_id, stations_scenario_id,number, duration_flight FROM route_calc_shedules WHERE routes_id = 18";

# # #$query = "SELECT id, name, routes_id, carriers_id FROM graphs ORDER BY routes_id LIMIT 150";

# # #$query = "SELECT id FROM stations_scenario WHERE routes_id = 18 AND stations_id = 34";

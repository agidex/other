#!/usr/bin/env perl

use strict;

my $file_handler;
open($file_handler,'>','/home/alex/programming/myfile1.txt');
print $file_handler "helloworld\n";
close($file_handler);

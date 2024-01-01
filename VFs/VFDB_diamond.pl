#!/usr/bin/perl
use strict;

foreach my $file(glob("*.fa")){
  my $out=$file;
  $out=~ s/fa/diamond/;
  system("~/diamond blastx -k 1 -e 0.00000001 -p 18 --id 80 --query-cover 80 -d ~/VFDB2022_setA.dmnd -q $file -o $out") ;
} 


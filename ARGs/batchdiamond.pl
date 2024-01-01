

#!/usr/bin/perl
use strict;

foreach my $file(glob("*.fa")){
  my $out=$file;
  $out=~ s/fa/diamond/;
  system("~/diamond blastx -k 1 -e 0.00000001 -p 24 --id 80 --query-cover 30  -d ~/SARG.2.2.dmnd -q $file -o $out") ;
} 

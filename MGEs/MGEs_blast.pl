#!/usr/bin/perl
use strict;

foreach my $file(glob("*.fa")){
  my $out=$file;
  $out=~ s/fa/blast/;
  system("~/ncbi-blast-2.11.0+/bin/blastn  -db ~/MGEs -evalue 0.00000001 -num_threads 16  -outfmt 6  -query $file  -out $out ") ;
} 




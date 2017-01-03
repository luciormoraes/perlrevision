#!/usr/bin/perl
# loops.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my @list = ('one', 'two', 'three', 'four', 'five');
    print "$_\n" foreach @list;

    my $line='';
    open(FH, "linesfile.txt");
    #print while (<FH>);
    #same for above line
    #print $_ while ($_ = <FH>);
    print $line while ($line = <FH>);
    #print $line =  <FH> until ($line =~ /3/);
    close FH;
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}
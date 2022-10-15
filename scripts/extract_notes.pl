#!/usr/bin/perl
# Extract my notes from epic react markdown files
# Brett --- Oct 2022
use strict;
use warnings;
use File::Basename;

foreach (@ARGV) {
    open my $fh, $_ or die "Can't open $_: $!";
    print "\n## ", basename($_), "\n";
    while (<$fh>)
    {
        if (/^##.*Brett's Notes/i ... /^## /) {
            print $_ if not /^## /;
        }
    }
    close $fh;
}
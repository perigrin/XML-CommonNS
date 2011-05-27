#!/usr/bin/env perl
use strict;
use 5.10.0;
use lib qw(lib);

use HTTP::Tiny;
use XML::CommonNS;

use constant URL => 'http://prefix.cc/popular/all.file.txt';


my $response = HTTP::Tiny->new->get(URL);

die "$response->{status}: $response->{reason}\n" unless $response->{success};

my @lines = (split /\n/, $response->{content})[0..99];

for my $line (@lines) {
    my ($ns, $uri) = split /\s+/, $line;
    $ns = uc $ns;
    next if XML::CommonNS->uri($ns);
    say "$ns => '$uri',";
}


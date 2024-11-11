#!/usr/bin/env perl
use strict;
use warnings;
use CGI;

my $q = CGI->new;
print $q->header('text/html');
print "<html><body><h1>Hello, World from Perl on Heroku!</h1></body></html>";

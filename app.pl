#!/usr/bin/perl

use CGI;

my $q = CGI->new;
print $q->header('text/html');
print "<html><body>";
print "<h1>Hello World!</h1>";
print "<p>Welcome to my first Perl web application on Heroku using Docker.</p>";
print "</body></html>";

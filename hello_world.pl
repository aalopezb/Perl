#!/usr/bin/perl

use strict;
use warnings;
use CGI;

my $cgi = CGI->new;

print $cgi->header;

print <<HTML;
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World with Perl</title>
</head>
<body>
    <h1>Hello World!</h1>
    <p>Welcome to my first Perl web application on Heroku using Docker.</p>
</body>
</html>
HTML

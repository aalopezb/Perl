#!/usr/bin/env perl
use strict;
use warnings;
use CGI;
use Plack::Request;

my $app = sub {
    my $env = shift;
    my $req = Plack::Request->new($env);
    my $res = $req->new_response(200);
    $res->content_type('text/html');
    $res->body('<h1>Hello World from Perl on Heroku</h1>');
    return $res->finalize;
};


use Plack::Runner;
Plack::Runner->run($app);

#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Mojolicious::Plugin::FluentLogger' ) || print "Bail out!\n";
}

diag( "Testing Mojolicious::Plugin::FluentLogger $Mojolicious::Plugin::FluentLogger::VERSION, Perl $], $^X" );

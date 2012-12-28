package Mojolicious::Plugin::FluentLogger;

use 5.006;
use strict;
use warnings;

use Mojo::Base 'Mojolicious::Plugin';
use Carp;
use Fluent::Logger;

=head1 NAME

Mojolicious::Plugin::FluentLogger - The great new Mojolicious::Plugin::FluentLogger!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    $self->plugin( FluentLogger => ( host => '127.0.0.1', port => 24224 ) );
    $self->app->fluent->post("access", { "agent" => "foo" });

=head1 SUBROUTINES/METHODS

=head2 register 

=cut

sub register {
    my ($self, $app, %conf) = @_;
    $app->attr( fluent => sub { Fluent::Logger->new(%conf) } );
}

=head1 AUTHOR

Tatsuya FUKATA, C<< <tatsuya.fukata at gmail.com > >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-mojolicious-plugin-fluentlogger at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Mojolicious-Plugin-FluentLogger>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Mojolicious::Plugin::FluentLogger


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Mojolicious-Plugin-FluentLogger>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Mojolicious-Plugin-FluentLogger>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Mojolicious-Plugin-FluentLogger>

=item * Search CPAN

L<http://search.cpan.org/dist/Mojolicious-Plugin-FluentLogger/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Tatsuya FUKATA.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Mojolicious::Plugin::FluentLogger

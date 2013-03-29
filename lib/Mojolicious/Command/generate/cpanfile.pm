
use strict;

package Mojolicious::Command::generate::cpanfile;

use Mojolicious;
use Mojo::Base 'Mojolicious::Command';

has description => "Generate cpanfile for your app";
has usage       => "usage: $0 generate cpanfile\n";

sub run {
    my ( $self, @args ) = @_;
    $self->render_to_rel_file( 'cpanfile', 'cpanfile' );
}

1;

__DATA__
 
@@ cpanfile
requires 'Mojolicious',  <%= $Mojolicious::VERSION %>

__END__

=head1 NAME

Mojolicious::Command::generate::cpanfile - Mojolicious command for generating cpanfile

=head1 VERSION

version 0.1.0

=head1 SYNOPSIS

=head1 DEPENDENCIES

=head1 AUTHOR

Yogesh Pandit <yogeshp08@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (c) B<2003>, Yogesh Pandit C<<yogeshp08@gmail.com>>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut

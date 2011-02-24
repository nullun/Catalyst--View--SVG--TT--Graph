package Catalyst::Helper::View::SVG::TT::Graph;

use strict;

=head1 NAME

Catayst::Helper::View::SVG::TT::Graph - Helper for Catalyst::View::SVG::TT::Graph

=head1 SYNOPSIS

    ./script/myapp_create.pl view Chart SVG::TT::Graph

=cut

our $VERSION = 0.010;

sub mk_compclass {
    my ( $self, $helper ) = @_;
    my $file = $helper->{file};
    `touch /tmp/testhelper`;
    $helper->render_file( 'compclass', $file );
}

=head1 AUTHOR

Terence Monteiro <terencemo[at]cpan.org>

=head1 LICENSE

This library is free software. You can redistribute it and/or modify it under
the same terms as Perl itself.

=cut

1;

__DATA__

__compclass__
package [% class %];

use strict;
use warnings;
use parent 'Catalyst::View::SVG::TT::Graph';

__PACKAGE__->config( {
    # format     => "png",
    # show_graph_title => 1
} );

=head1 NAME

[% class %] - [% name %] View for [% app %]

=head1 DESCRIPTION

SVG::TT::Graph View for [% app %].

=head1 SEE ALSO

L<[% app %]>

=head1 AUTHOR

[% author %]

=head1 LICENSE

This library is free software. You can redistribute it and/or modify it under
the same terms as Perl itself.

=cut

1;

package Locale::Maketext::Extract::Plugin::Null;

use strict;

use base qw(Locale::Maketext::Extract::Plugin::Base);

# ABSTRACT: Null parser

=head1 SYNOPSIS

    $plugin = Locale::Maketext::Extract::Plugin::Null->new(
        $lexicon            # A Locale::Maketext::Extract object
        @file_types         # Optionally specify a list of recognised file types
    )

    $plugin->extract($filename, $filecontents);

=head1 DESCRIPTION

Exclude parsing certain file types.

=head1 SHORT PLUGIN NAME

    none - the module must be specified in full

=head1 KNOWN FILE TYPES

=over 4

=item .t

=item .txt

=back

=cut

sub file_types {
    return qw( t txt );
}

sub extract { }

=head1 SEE ALSO

=over 4

=item L<xgettext.pl>

for extracting translatable strings from common template
systems and perl source files.

=item L<Locale::Maketext::Lexicon>

=item L<Locale::Maketext::Extract::Plugin::Base>

=item L<Locale::Maketext::Extract::Plugin::FormFu>

=item L<Locale::Maketext::Extract::Plugin::Generic>

=item L<Locale::Maketext::Extract::Plugin::Perl>

=item L<Locale::Maketext::Extract::Plugin::TextTemplate>

=item L<Locale::Maketext::Extract::Plugin::PPI>

=item L<Locale::Maketext::Extract::Plugin::TT2>

=item L<Locale::Maketext::Extract::Plugin::YAML>

=back

=cut

1;

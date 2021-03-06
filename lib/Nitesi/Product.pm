package Nitesi::Product;

use strict;
use warnings;

use Moo;
use Sub::Quote;

=head1 NAME

Nitesi::Product - Product class for Nitesi Shop Machine

=head1 DESCRIPTION

Generic product class for L<Nitesi>.

=head2 PRODUCTS

Each product has the following attributes:

=over 4

=item sku

Unique product identifier.

=item name

Product name.

=item description

Product description.

=item price

Product price.

=item weight

Product weight in grams.

=item priority

The product priority is used for sorting products on
search results and category listings.

=item inactive

Inactive products are excluded from search results and
category listings.

=back

=cut

has sku => (
    is => 'rw',
);

has name => (
    is => 'rw',
);

has description => (
    is => 'rw',
);

has price => (
    is => 'rw',
);

has weight => (
    is => 'rw',
    lazy => 1,
    default => quote_sub q{return 0;},
);

has priority => (
    is => 'rw',
    lazy => 1,
    default => quote_sub q{return 0;},
);

has inactive => (
    is => 'rw',
    lazy => 1,
    default => quote_sub q{return 0;},
);

=head1 AUTHOR

Stefan Hornburg (Racke), <racke@linuxia.de>

=head1 LICENSE AND COPYRIGHT

Copyright 2012 Stefan Hornburg (Racke) <racke@linuxia.de>.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1;

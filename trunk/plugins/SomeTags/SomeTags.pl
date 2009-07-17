# ===========================================================================
# A Movable Type plugin to create some extra tags for your site.
# Copyright 2003 Everitz Consulting <everitz.com>.
#
# This program is free software:  You may redistribute it and/or modify it
# it under the terms of the Artistic License version 2 as published by the
# Open Source Initiative.
#
# This program is distributed in the hope that it will be useful but does
# NOT INCLUDE ANY WARRANTY; Without even the implied warranty of FITNESS
# FOR A PARTICULAR PURPOSE.
#
# You should have received a copy of the Artistic License with this program.
# If not, see <http://www.opensource.org/licenses/artistic-license-2.0.php>.
# ===========================================================================
package MT::Plugin::SomeTags;

use vars qw($VERSION);
$VERSION = '1.0.1';

use strict;

# ---------------------------------------------------------------------------
# These variables define the values returned by the tags.  Use the defaults
# or set your own value(s) inside the quotes.  The quotes are required.  If
# you are not going to use a value (ever), set the value to an empty string
# '' - with no spaces between the quotes.
#
# This is the title of your license.
#
my $STLicenseTitle = 'Artistic License';
#
#
# This is the url to the details of your license.
#
my $STLicenseURL = 'http://www.opensource.org/licenses/artistic-license-2.0.php';
#
#
# This is the version number of your license.
#
my $STLicenseVersion = '2.0';
# ---------------------------------------------------------------------------

use MT::Template::Context;

MT::Template::Context->add_tag(STLicenseTitle => sub { $STLicenseTitle });
MT::Template::Context->add_tag(STLicenseURL => sub { $STLicenseURL });
MT::Template::Context->add_tag(STLicenseVersion => sub { $STLicenseVersion });

1;

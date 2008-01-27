# ---------------------------------------------------------------------------
# SomeTags: Some Extra Functionality for Your Site
# A Plugin for Movable Type
#
# Release 1.0
# September 12, 2003
#
# Copyright 2003, Chad Everett (dbd@cxliv.org, http://www.cxliv.org/jayseae/)
#
# The program is licensed under the Open Software License version 2.0
# http://www.opensource.org/licenses/osl-2.0.php
# ---------------------------------------------------------------------------
package MT::Plugin::SomeTags;

use vars qw($VERSION);
$VERSION = 1.0;

use strict;

# ---------------------------------------------------------------------------
# These variables define the values returned by the tags.  Use the defaults
# or set your own value(s) inside the quotes.  The quotes are required.  If
# you are not going to use a value (ever), set the value to an empty string
# '' - with no spaces between the quotes.
#
# This is the title of your license.
#
my $STLicenseTitle = 'Open Software License';
#
#
# This is the url to the details of your license.
#
my $STLicenseURL = 'http://www.opensource.org/licenses/osl-2.0.php';
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

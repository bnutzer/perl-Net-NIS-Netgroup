# $Id: Netgroup.pm,v 1.1 2009/06/09 14:31:58 bastian Exp $
# Copyright (c) 2007 Collax GmbH
package Net::NIS::Netgroup;

use 5.006001;
use strict;

require Exporter;
require DynaLoader;

our @ISA = qw(Exporter DynaLoader);
our @EXPORT = qw ( getdomainname setdomainname innetgr );

our $VERSION = "1.0";

=head1 NAME

Net::NIS::Netgroup - Interface to glibc "getdomainname" function and its family

=head1 VERSION

Version 1.0

=cut

bootstrap Net::NIS::Netgroup;

=head1 SYNOPSIS

 use Net::NIS::Netgroup;

 printf("Domain name is %s\n", getdomainname());
 setdomainname("newdom.com");

 printf("Is user in group? %d\n", innetgr('netgroup', 'host', 'user', 'domain'));

=cut

1;

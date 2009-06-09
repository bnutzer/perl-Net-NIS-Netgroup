#!/usr/bin/perl -w

use Test::More tests => 5;

use Net::NIS::Netgroup;

ok ( getdomainname(), "Successfully fetched domainname " . getdomainname() );

my $newdom = "barfoo";

ok ( setdomainname($newdom), "Successfully set new domainname " . $newdom);

is ( getdomainname(), $newdom, "Second get is equal to what I set ($newdom)" );

#my $netgroup = undef;
my $netgroup = 'Users.users';
my $host = undef;
my $user = undef;
my $domain = undef;

ok ( innetgr($netgroup, $host, $user, $domain), "undef host/user/domain is \"innetgr\" \"$netgroup\"" );
$netgroup = 'jibbetnisch'; $host = 'nirgendwo'; $user = 'Pappnase'; $domain = 'sicher.nicht.hier';
ok ( !innetgr($netgroup, $host, $user, $domain), "invalid netgroup/host/user/domain are not \"innetgr\"" );

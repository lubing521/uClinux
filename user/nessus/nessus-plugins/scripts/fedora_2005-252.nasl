#
# (C) Tenable Network Security
#
# This plugin text is was extracted from the Fedora Security Advisory
#


if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(19635);
 script_version ("$Revision: 1.1 $");
 
 name["english"] = "Fedora Core 3 2005-252: devhelp";
 
 script_name(english:name["english"]);
 
 desc["english"] = "
The remote host is missing the patch for the advisory FEDORA-2005-252 (devhelp).

A API document browser for GNOME 2.

Update Information:

There were several security flaws found in the mozilla package, which
devhelp depends on. Users of devhelp are advised to upgrade to this
updated package which has been rebuilt against a later version of
mozilla which is not vulnerable to these flaws.


Solution : Get the newest Fedora Updates
Risk factor : High";



 script_description(english:desc["english"]);
 
 summary["english"] = "Check for the version of the devhelp package";
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2005 Tenable Network Security");
 family["english"] = "Fedora Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");
if ( rpm_check( reference:"devhelp-0.9.2-2.3.1", release:"FC3") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"devhelp-devel-0.9.2-2.3.1", release:"FC3") )
{
 security_hole(0);
 exit(0);
}
if ( rpm_check( reference:"devhelp-debuginfo-0.9.2-2.3.1", release:"FC3") )
{
 security_hole(0);
 exit(0);
}

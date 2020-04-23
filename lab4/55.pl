#!/usr/bin/perl

open (PASSWD,"/etc/passwd") || die ("Can't open passwd file!");
@passwd = <PASSWD>;
close (PASSWD);

foreach (@passwd) {
	@userdata = split(/:/,$_);
	if (@userdata[2] > 1000) {
		print "@userdata[0]: @userdata[4]\n";
	}
}

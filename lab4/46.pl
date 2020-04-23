#!/usr/bin/perl

$string = "Hello world!";
$login = `whoami`;
if ($login eq "root\n")
{
	print "Don't use root account!\n";
} else {
	print $string."\n";
	print `date`;
}

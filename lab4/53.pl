#!/usr/bin/perl

print "Please enter your name: ";
chomp ($name = <STDIN>);

srand;
@namelist = ("Bob","Jane","Frank");
@colorlist = ("green","red","blue","yellow");
foreach $testname(@namelist) {
	$colors{$testname} = $colorlist[rand(@colorlist)];
}
while (($name,$color) = each(%colors)) {
	print "$name: $color\n";
	undef ($n);
	do {
		$color = @colorlist[$n+1];
		$n++;
	} until ($color eq "blue");
}

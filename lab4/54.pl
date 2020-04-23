open (FH, ">/path/to/file2.txt");
print FH $_ foreach (@contents);
close (FH);

open (MAIL,"| /sbin/sendmail -oi -t");
print MAIL "From: me\@somewhere.com\n";
print MAIL "To: you\@somewhereelse.com\n";
print MAIL "Subject: Check it out!\n\n";
print MAIL $_ foreach (@contents);
close (MAIL);

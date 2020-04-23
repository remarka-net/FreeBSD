#include <stdio.h>
#include <fcntl.h>
#include <sys/syscall.h>

#define PERMS 0666

void error(char *, ...);

main(int argc, char *argv[])
{
	int f1, f2, n;
	char buf[BUFSIZ];

	if (argc != 3)
		error("Use: cp from to");
	if ((f1 = open(argv[1], O_RDONLY, 0)) == -1)
		error("cp: can't open file %s", argv[1]);
	if ((f2 = creat(argv[2], PERMS)) == -1)
		error("cp: can't create file %s", argv[2]);
	while ((n = read(f1, buf, BUFSIZ)) > 0)
		if (write(f2, buf, n) != n)
			error("cp: can't write to %s", argv[2]);
	return 0;
}

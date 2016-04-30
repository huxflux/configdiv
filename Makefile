CC=gcc
CFLAGS=-someflag
somename: someobjectfile.o
	$(CC) -o nameofexec someobjectfile.o $(CFLAGS)
clean:
	rm nameofexec someobjectfile.o
	@echo Clean done.

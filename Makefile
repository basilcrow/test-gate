CC=/opt/gcc-4.8.1/bin/gcc -m64
CFLAGS=-g3 \
	-Wall \
	-Wextra \
	-Werror \
	-pedantic \
	-Wbad-function-cast \
	-Wcast-align \
	-Wcast-qual \
	-Wconversion \
	-Wfloat-equal \
	-Wformat-nonliteral \
	-Winline \
	-Wmissing-declarations \
	-Wmissing-prototypes \
	-Wnested-externs \
	-Wpointer-arith \
	-Wredundant-decls \
	-Wshadow \
	-Wstrict-prototypes \
	-Wundef \
	-Wwrite-strings \
	-Wno-unused-function \
	-Wno-unused-parameter \
	-Wno-unused-variable

all: hello

hello: hello.o
	$(CC) $(LDFLAGS) -o $@ $^

hello.o: hello.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	/bin/rm -f *.o hello

objects = AES.o

AES : $(objects)
	cc -g -o AES $(objects)

AES.o : AES.c AES.h
	cc -g -c AES.c

clean :
	-rm $(objects)

target = AES
objects = $(target).o

.PHONY : all cleanall clean

all : $(objects)
	cc -g -o $(target) $(objects)

AES.o : AES.c AES.h
	cc -g -c AES.c

cleanall : clean
	$(RM) AES

clean :
	$(RM) $(objects)

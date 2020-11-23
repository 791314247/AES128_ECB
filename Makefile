target  := AES
objects := $(target).o
CFLAGES := -g
#CFLAGES += -Wall

.PHONY : all clean

all : $(target)

$(target) : $(objects)
	cc $(CFLAGES) -o $@ $^

AES.o : AES.c AES.h
	cc -c $(CFLAGES) $<

clean :
	$(RM) $(objects)

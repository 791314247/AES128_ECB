TARGET  := AES
BUILD   := ./build
C_SRC   := $(shell find ./ -type f -iname *.c)
OBJECTS := $(addprefix $(BUILD)/, $(notdir $(C_SRC:%.c=%.o)))
vpath %.c $(C_SRC)

CFLAGES  = -MMD -MP -MF"$(@:.o=.d)"
CFLAGES += -g
#CFLAGES += -Wall


.PHONY : all clean

all : $(BUILD) $(BUILD)/$(TARGET)

$(BUILD)/$(TARGET) : $(OBJECTS)
	@gcc $(CFLAGES) -o $@ $^

$(BUILD)/%.o : %.c Makefile
	@gcc -c $(CFLAGES) -o $@ $<

$(BUILD):
	@mkdir -p $(BUILD)

clean :
	$(RM) build

-include $(wildcard *.d)

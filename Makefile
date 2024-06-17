CC := gcc
AS := nasm
CFLAGS := -g
ASFLAGS := -f elf64 -g -F dwarf
SRC := $(patsubst %.S, %.elf, $(patsubst %.c, %.o, $(wildcard *.c *.S)))

.PHONY: clean run

main: $(SRC)
	$(CC) $(CFLAGS) main_test.c -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.elf: %.S
	$(AS) $(ASFLAGS) $< -o $@

run: main
	./main

clean:
	rm main *.elf *.o

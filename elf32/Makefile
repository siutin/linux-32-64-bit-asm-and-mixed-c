
all: run

hello.o: hello.asm
	nasm -felf32 hello.asm

hello: hello.o
	ld -m elf_i386 -o hello hello.o
	
run: hello
	./hello

clean:
	-rm hello.o
	-rm hello
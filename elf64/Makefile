
all: run

hello.o: hello.asm
	nasm -felf64 hello.asm

hello: hello.o
	ld -m elf_x86_64 -o hello hello.o
	
run: hello
	./hello

clean:
	-rm hello.o
	-rm hello
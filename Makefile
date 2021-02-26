
all: run

hello.o: hello.asm
	nasm -felf64 hello.asm

a.out: hello.o
	gcc -no-pie -m64 hello.o
	
run: a.out
	./a.out

clean:
	-rm hello.o
	-rm a.out
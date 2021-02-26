
all: run

hello.o: hello.asm
	nasm -felf hello.asm

hello: hello.o
	gcc -no-pie -m32 -o hello hello.o
	
run: hello
	./hello

clean:
	-rm hello.o
	-rm hello
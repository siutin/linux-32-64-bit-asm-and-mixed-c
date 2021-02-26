; ----------------------------------------------------------------------------
; hello.asm
; ----------------------------------------------------------------------------

[bits 32]

    global _start
    section .text

%define system_call int 0x80

_start:
      mov           ebx, 1
      mov           ecx, message
      mov           edx, 13
      mov           eax, 4
      system_call

      xor           ebx, ebx
      mov           eax, 1
      system_call
message:
      db "Hello World", 10, 0
; ----------------------------------------------------------------------------
; hello.asm
; ----------------------------------------------------------------------------

[bits 32]

      global        _start
      section       .text

%define system_call int 0x80

_start:
      mov           ebx, 1
      mov           ecx, message
      mov           edx, messageLen
      mov           eax, 4
      system_call

      xor           ebx, ebx
      mov           eax, 1
      system_call

section .data
      message       db "Hello World", 10, 0
      messageLen    equ $-message
; ----------------------------------------------------------------------------
; hello.asm
; ----------------------------------------------------------------------------

[bits 64]

      global        _start
      section       .text

_start:
      mov           rax, 1                    ; system call for write
      mov           rdi, 1                    ; first arg, stdout
      mov           rsi, message              ; second arg, starting at message
      mov           rdx, messageLen           ; third arg, message length
      syscall

      mov           rax, 60                   ; system call for exit
      xor           rdi, rdi                  ; first arg, exit code 0=SUCCESS
      syscall

section .data
      message       db "Hello World", 10, 0
      messageLen    equ $-message
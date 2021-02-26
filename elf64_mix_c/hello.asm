; ----------------------------------------------------------------------------
; hello.asm
; ----------------------------------------------------------------------------

[bits 64]

        global    main
        extern    printf

        section  .text
main:
        mov       rdi, message
        xor       eax, eax
        call      printf wrt ..plt
        mov       eax, 0
        ret
message:
        db        'Hello, World', 10, 0
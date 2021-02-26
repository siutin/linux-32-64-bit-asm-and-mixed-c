; ----------------------------------------------------------------------------
; hello.asm
; ----------------------------------------------------------------------------

[bits 32]

        global    main
        extern    printf

        section  .text
main:
        push      message
        call      printf
        add       esp, 4
        mov       eax, 0
        ret
message:
        db        'Hello, World', 10, 0
/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(__rt_sigprocmask)
    mov     ip, r7
    ldr     r7, =__NR_rt_sigprocmask
    swi     #0
    mov     r7, ip
    cmn     r0, #(MAX_ERRNO + 1)
    bxls    lr
    neg     r0, r0
    b       __set_errno_internal
END(__rt_sigprocmask)

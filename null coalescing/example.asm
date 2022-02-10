global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1
label1: resb 1

segment .text
main:
mov eax, 12
push eax
call write_unsigned
add esp,4
mov eax, 12
mov [label0], eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4
mov al, 1
mov [label1], al
xor eax, eax
mov al, [label1]
push eax
call write_boolean
add esp,4

ret

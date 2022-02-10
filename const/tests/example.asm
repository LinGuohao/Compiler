global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label1: resd 1
section .data
label0: dd 12
label2: dd 1

segment .text
main:
mov eax, [label0]
mov [label1], eax
mov eax, [label0]
push eax
call write_unsigned
add esp,4
mov eax, [label1]
push eax
call write_unsigned
add esp,4
mov eax, [label2]
push eax
call write_unsigned
add esp,4

ret

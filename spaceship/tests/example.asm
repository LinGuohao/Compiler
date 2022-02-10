global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label1: resb 1
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, [label0]
mov ebx,eax
mov eax, 23
cmp eax,ebx
je near start_1
setb al 
cmp al,1
je near start_2
mov eax, 0
jmp end
start_2:
mov eax, 2
jmp end
start_1:
mov eax,1
end:
push eax
call write_unsigned
add esp,4

ret

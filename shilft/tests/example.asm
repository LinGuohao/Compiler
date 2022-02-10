global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
mov eax, [label0]
mov ebx,eax
mov eax, 3
mov ecx,2
push ebx
label1:
cmp eax,0
je near label2
cmp eax,0
jb near label2
push ebx
xor edx,edx
div ecx
pop ebx
sub eax ,1
jmp label1
label2:
pop ebx
mov eax ,ebx
push eax
call write_unsigned
add esp,4

ret

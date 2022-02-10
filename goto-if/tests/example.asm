global main
extern read_unsigned, write_unsigned
extern read_boolean, write_boolean
segment .bss
label0: resd 1

segment .text
main:
call read_unsigned
mov [label0], eax
label1:
mov eax, [label0]
push eax
call write_unsigned
add esp,4
label2:
mov eax, 0
push eax
xor edx, edx
mov eax, 2
push eax
mov eax, [label0]
pop ebx
div ebx
mov eax, edx
pop ebx
cmp eax, ebx
sete al
cmp al, 1
jne near label3
mov eax, 1
push eax
mov eax, [label0]
pop ebx
sub eax, ebx
mov [label0], eax
mov eax, 5
push eax
mov eax, [label0]
pop ebx
cmp eax, ebx
setg al
cmp al,1
je near label1
jmp label4
label3:
mov eax, 1
push eax
mov eax, [label0]
pop ebx
add eax, ebx
mov [label0], eax
label4:
mov eax, [label0]
push eax
call write_unsigned
add esp,4

ret

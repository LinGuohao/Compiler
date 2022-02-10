str1=".asm"
str2=".o"
make
./while ./tests/$1 > ./tests/example.asm
nasm -felf ./tests/example.asm
gcc io.c ./tests/example.o -m32 -o ./tests/example
./tests/example


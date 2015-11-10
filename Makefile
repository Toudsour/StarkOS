Stark.bin : Stark.asm Makefile
	nasm -o Stark.bin Stark.asm

Stark.img : Stark.bin Makefile
	dd conv=sync if=Stark.bin of=Stark.img bs=1440k count=1

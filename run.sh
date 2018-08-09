sudo rm `pwd`/boot/kernel.img
sudo rm `pwd`/{kernel.img,main.elf,start.o,main.o}
sudo apt-get install binutils-arm-none-eabi gcc-arm-none-eabi
arm-none-eabi-as start.S -o start.o
arm-none-eabi-gcc -Wall -Werror -O2 -nostdlib -nostartfiles -ffreestanding -c main.c -o main.o
arm-none-eabi-ld start.o main.o -T ldscript -o main.elf
arm-none-eabi-objcopy main.elf -O binary `pwd`/boot/kernel.img
sudo ./rpiboot -d boot/

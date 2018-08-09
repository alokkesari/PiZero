sudo rm `pwd`/boot/kernel.img
#Removing previous existing versions of kernel.img.
sudo rm `pwd`/{main.elf,start.o,main.o}
#Removing previous existing versions of object files and executable files created from the C code.
sudo apt-get install binutils-arm-none-eabi gcc-arm-none-eabi
#Installing compiler for generating the kernel image from the Embedded C code.
arm-none-eabi-as start.S -o start.o
#Generating object file from Assembly code source file.
arm-none-eabi-gcc -Wall -Werror -O2 -nostdlib -nostartfiles -ffreestanding -c main.c -o main.o
#Generating object file from the maine program written in Embedded C. 
arm-none-eabi-ld start.o main.o -T ldscript -o main.elf
#Specifying the poistion of the SDRAM in ldscript where the binary file (kernel.img) will be stored.
arm-none-eabi-objcopy main.elf -O binary `pwd`/boot/kernel.img
#Generating binary file from the executable file created with the description of the memory addresses of the peripherals connected.
sudo ./rpiboot -d boot/
#Program uploaded. Enjoy! 

qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios ../rCore-Tutorial-v3/bootloader/rustsbi-qemu.bin \
    -device loader,file=target/riscv64gc-unknown-none-elf/debug/os.bin,addr=0x80200000 \
    -gdb tcp::10203 -S


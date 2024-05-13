qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios ../bootloader/rustsbi-qemu.bin \
    -device loader,file=target/riscv64gc-unknown-none-elf/debug/os.bin,addr=0x80200000 \
    -gdb tcp::1234 -S


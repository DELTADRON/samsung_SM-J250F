cmd_firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o := arm-eabi-gcc -Wp,-MD,firmware/tsp_imagis/.ist3038h_j2y18_cmcs.bin.gen.o.d -nostdinc -isystem /home/user/kernel/toolchain/bin/../lib/gcc/arm-eabi/4.8/include -I../arch/arm/include -Iarch/arm/include/generated  -I../include -Iinclude -I../arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I../include/uapi -Iinclude/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian  -I../../arch/arm/mach-msm/include -I../arch/arm/mach-msm/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -Wa,-gdwarf-2   -c -o firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.S

source_firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o := firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.S

deps_firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o := \
  ../arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \

firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o: $(deps_firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o)

$(deps_firmware/tsp_imagis/ist3038h_j2y18_cmcs.bin.gen.o):

cmd_firmware/abov/a96t316au_j2y18eur.fw.gen.o := arm-eabi-gcc -Wp,-MD,firmware/abov/.a96t316au_j2y18eur.fw.gen.o.d -nostdinc -isystem /home/user/kernel/toolchain/bin/../lib/gcc/arm-eabi/4.8/include -I../arch/arm/include -Iarch/arm/include/generated  -I../include -Iinclude -I../arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I../include/uapi -Iinclude/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian  -I../../arch/arm/mach-msm/include -I../arch/arm/mach-msm/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -Wa,-gdwarf-2   -c -o firmware/abov/a96t316au_j2y18eur.fw.gen.o firmware/abov/a96t316au_j2y18eur.fw.gen.S

source_firmware/abov/a96t316au_j2y18eur.fw.gen.o := firmware/abov/a96t316au_j2y18eur.fw.gen.S

deps_firmware/abov/a96t316au_j2y18eur.fw.gen.o := \
  ../arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \

firmware/abov/a96t316au_j2y18eur.fw.gen.o: $(deps_firmware/abov/a96t316au_j2y18eur.fw.gen.o)

$(deps_firmware/abov/a96t316au_j2y18eur.fw.gen.o):

arm-none-eabi-gcc -O2 -mabi=aapcs -marm -march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=hard -D__DYNAMIC_REENT__ -I libtess2/Include/ -c ultiboClvgl.c lvgl/src/lv_core/*.c lvgl/src/lv_draw/*.c lvgl/src/lv_font/*.c lvgl/src/lv_gpu/*.c lvgl/src/lv_hal/*.c lvgl/src/lv_misc/*.c lvgl/src/lv_themes/*.c lvgl/src/lv_widgets/*.c lv_examples/src/lv_demo_printer/*.c lv_examples/src/lv_demo_printer/images/*.c lv_examples/src/lv_demo_benchmark/*.c lv_examples/assets/*.c
arm-none-eabi-ar rcs libultiboClvgl.a *.o
@echo off
del kernel7.img
del *.o
del *.ppu
c:\Ultibo\Core\fpc\3.1.1\bin\i386-win32\fpc -B -Tultibo -Parm -CpARMV7A -WpRPI3B @c:\Ultibo\Core\fpc\3.1.1\bin\i386-win32\RPI3.CFG -O2 -dPLATFORM_PI3 ultibolvgl.lpr
echo Done.
echo copying kernel to image Dir
copy kernel7.img ultiboCgenericImage
echo copying kernel to SD
copy kernel7.img G:\
del kernel7.img
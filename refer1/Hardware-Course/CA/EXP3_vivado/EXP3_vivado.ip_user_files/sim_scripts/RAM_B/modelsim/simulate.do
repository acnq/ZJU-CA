onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_0 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.RAM_B xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {RAM_B.udo}

run -all

quit -force

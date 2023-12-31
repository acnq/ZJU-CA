onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vram_opt

do {wave.do}

view wave
view structure
view signals

do {vram.udo}

run -all

quit -force

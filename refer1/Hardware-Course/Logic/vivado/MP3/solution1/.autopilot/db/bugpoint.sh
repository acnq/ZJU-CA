export PATH=D:/Tools/XILINX/Vivado/2016.3/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/gcc/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/msys/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/clang/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/lib/win64.o;D:/Tools/XILINX/Vivado_HLS/2016.3/tps/win64/jre/bin/server;D:/Tools/XILINX/Vivado_HLS/2016.3/tps/win64/jre/bin;D:\Tools\XILINX\Vivado_HLS\2016.3\bin\..\msys\bin;D:/Tools/XILINX/Vivado/2016.3/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/gcc/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/msys/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/clang/bin;C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\windows\system32;C:\windows;C:\windows\System32\Wbem;C:\windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\ProgramData\Lenovo\ReadyApps;C:\Program Files\Lenovo\Fingerprint Manager Pro\;D:\Program Files (x86)\QuickTime\QTSystem\;C:\Program Files\Intel\WiFi\bin\;C:\WINDOWS\system32\config\systemprofile\.dnx\bin;C:\Program Files\Microsoft DNX\Dnvm\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files (x86)\Autodesk\Backburner\;D:\Program Files\MATLAB\R2015b\runtime\win64;D:\Program Files\MATLAB\R2015b\bin;D:\Program Files\MATLAB\R2015b\polyspace\bin;D:\Program Files\Java\jdk\bin;D:\Program Files (x86)\Altium Designer Summer 09\System;C:\Users\Shana\AppData\Local\Microsoft\WindowsApps;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v6_1;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fft_v9_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/opencv;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fir_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/dds_v6_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v6_1;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fft_v9_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/opencv;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fir_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/dds_v6_0
export LD_LIBRARY_PATH=D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/graphviz/lib;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/graphviz/lib;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/bin;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v6_1;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fft_v9_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/opencv;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fir_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/dds_v6_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/gdb_v7_2;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v6_1;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fpo_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fft_v9_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/opencv;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/fir_v7_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/dds_v6_0;D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/gdb_v7_2
export HDI_APPROOT=D:/Tools/XILINX/Vivado_HLS/2016.3
export XILINX_OPENCL_CLANG=D:/Tools/XILINX/Vivado_HLS/2016.3/win64/tools/clang
export RDI_PLATFORM=win64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -interface-preproc -interface-gen  -deadargelim -directive-preproc -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -read-loop-dep -dce -bitwidth -loop-dep -norm-name -legalize   F:/vivado/MP3/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
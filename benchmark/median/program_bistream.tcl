# connect to th eboard
connect

# program bitstream
# fpga ../../bitstreams/V2_8CUs_SubIntegr_2AXIs_2TAGM_230MHz.bit
fpga ../../bitstreams/V2_8CUs_SubIntegr_2AXIs_230MHz.bit
# fpga ../../bitstreams/V2_8CUs_Atomic_SubInteger_235MHz.bit


# select the first ARM core as a target
targets -set -filter {name =~ "ARM*#0"}

# reset the processor
rst -processor

# PS7 initialization
source ../FGPU_hw/ps7_init.tcl
ps7_init
ps7_post_config
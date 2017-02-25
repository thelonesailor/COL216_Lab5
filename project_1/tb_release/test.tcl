#forcing SW to prevent U values on LEDs
add_force {/tb/SW} -radix hex {0000 0ns}
#pulsing BTN to create reset signal
add_force {/tb/BTN} -radix bin {10000 0ns}
add_force {/tb/CLK} -radix bin {1 0ns} {0 5000ps} -repeat_every 10000ps
run 50
#release BTN to release reset
add_force {/tb/BTN} -radix hex {0 0ns}
#run for some time
run 100
run 1000
run 1000


compile:
	vlib work;
	vlog -sv \
	+acc \
	+cover \
	+fcover \
	adder.sv \
	adder_tb.sv

simulate:
	vsim -vopt work.adder_tb \
	-voptargs=+acc=npr \
	-assertdebug \
	-l adder.log \
	-sva \
	-coverage \
	-c -do "log -r /*; add wave -r /*; coverage save -onexit -assert -directive -cvg -codeAll adder_coverage.ucdb; run -all; exit" \
	-wlf adder.wlf

all:
	make compile
	make simulate

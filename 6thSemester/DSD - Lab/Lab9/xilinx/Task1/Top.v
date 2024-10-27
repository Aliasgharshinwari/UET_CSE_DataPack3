module Top( CLK, RST, BTN, LED);
	input CLK, RST, BTN;
	output LED;
	wire SLOW_CLOCK;
	wire synch_btn;
	wire pulse;
	
	clock_divider divider(CLK, SLOW_CLOCK);
	sw_btn_fsm my_fsm( pulse, SLOW_CLOCK, RST, LED);
	
	synchronizer s1(SLOW_CLOCK, BTN, RST, synch_btn);
	level_to_pulse lp(synch_btn, SLOW_CLOCK, RST, pulse);
	
endmodule

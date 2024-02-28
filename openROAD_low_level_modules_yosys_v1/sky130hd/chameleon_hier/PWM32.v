module PWM32 (
		input wire clk,
		input wire rst,
		input wire [31:0] PRE,
		input wire [31:0] TMRCMP1,
		input wire [31:0] TMRCMP2,
		input wire 				TMREN,
		output reg pwm
	);

	reg [31:0]	TMR;
	reg [31:0] 	clkdiv;
	wire 		timer_clk = (clkdiv==PRE) ;
	wire 		tmrov = (TMR == TMRCMP1);
	wire 		pwmov = (TMR == TMRCMP2);

	// Prescalar
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			clkdiv <= 32'd0;
		else if(timer_clk)
			clkdiv <= 32'd0;
		else if(TMREN)
			clkdiv <= clkdiv + 32'd1;
	end

	// Timer
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			TMR <= 32'd0;
		else if(tmrov)
			TMR <= 32'd0;
		else if(timer_clk)
			TMR <= TMR + 32'd1;
	end

	// PWM Output
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pwm <= 1'd0;
		else if(pwmov)
			pwm <= 1'd1;
		else if (tmrov)
			pwm <= 1'd0;
	end

endmodule
module clock;

reg clk;
reg [3:0] count;

always @ (posedge clk)
begin
	count <= count + 1;
end

initial
begin
	count = 0;
	$display("time\tclk\tcount");
	$monitor("%g\t%b\t%b", $time, clk, count);
	clk <= 1'b0;

  #100 $finish;
end

always
begin
	#5 clk = ~clk;
end

endmodule

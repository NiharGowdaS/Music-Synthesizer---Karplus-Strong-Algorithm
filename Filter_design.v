module filter(o_fil,i_fil,clk);
  input wire clk;
  input wire [7:0]i_fil;
  output reg [7:0]o_fil;
  reg[7:0] xn;
  reg[7:0] xn1;
  initial begin
    xn = 8'b0;
  end
  always @(negedge clk) begin
    xn1=xn;
    xn=i_fil;
    o_fil=(xn+xn1)/2;
  end
endmodule 

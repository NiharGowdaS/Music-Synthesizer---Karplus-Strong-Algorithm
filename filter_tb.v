module tb;
  
  //Parameter representing period of clock 
  parameter period = 10;
  //Port declarations
  reg [7:0]it;
  reg clok;
  wire [7:0]ot;
  
  //Instantiation
  filter test(ot,it,clok);
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0, test);
    
    //Assign test values to input
    //Add delay of some time
    //Finish simulation
    
    assign it = 8'b010;#10;
    assign it = 8'b001;#10;
    assign it = 8'b100;#10;
    $finish;
  end
  
 initial begin
  //Print Input and output
   $monitor("i= %d, o=%f",it,ot);
 end
  //Clock
  initial begin 
    clok = 0;
    forever
      #(period/2) clok = ~clok;
  end
endmodule

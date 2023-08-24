module tb;
  
  /*Datatype declarations
  input and output as 8 bits, clock as 1 bit*/
  wire[7:0] out;
  reg clk;
  reg[7:0] in;
  integer a;
  integer T;
  
  /*Parameter declaration
  Declare parameter representing time period of clock*/
 // parameter t;
  
  //Instantiation
  delay_line delay(out, in, clk);
  
  //Initial block 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, delay);
    
    
    /*Assign test values to input
    Input can switch its value after 1,2,3, .. clock cycles*/
    //integer T;
    
    assign T=10;
    for(a=0;a<T;a=a+1) 
       begin
         in={$random}%256;
       #10;
       end
    #60 $finish;
  end
    initial begin
       clk = 0;
       forever
       #5 clk=~clk;
    end
    
    //#100 $finish
    //Add a time delay so 
    //Finish simulation
  
    
  //Drive the clock signal
  //Initialise clock as zero
  
endmodule

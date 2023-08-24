module delay_line(out, in, clk);
  
  /*assign values to Parameters
  L = number of samples of delay
  b = number of bits of single sample
  */
  parameter L=4;
  parameter b=8;

  /*Port declarations
  Input and output of the delay line are 8 bit values
  Clock is one bit value*/
  input wire[7:0] in;
  input wire clk;
  output reg[7:0] out;
  
  /*Datatype declarations
  array called 'a' of size L where each element of array is 8  bit value*/
  /*integer variable which will be used in the for loop as counter*/
  reg [7:0]a[L-1:0];
  
         
  
  /*Initial block
   Initialise all elements of array 'a' to zero
   Initialise output to zero*/
  
  integer i;
   initial begin
     out = 0;
     for (i=0;i<L;i=i+1) begin
       a[i]=0;
    end
end

  always @(negedge clk) begin
   /* Assign last element of array 'a' to output out
    Shift all elements of array one position towards higher   index
    Assign input to first element of array 'a' */
    out = a[L-1];
    for (i=L-1;i>0;i=i-1) begin
      a[i]=a[i-1];
    end
    
    a[0]=in;
    
  end
  
endmodule

module tb;
  
  //Parameters
  parameter period = 10;
  parameter L = 100;
  parameter N = 20000;
  parameter b = 8;
  
  //Variable declarations
   wire[N - 1:0] O;
   reg[7:0] I;
   reg CLK;
   integer k, fd;
  
  //Instantiation
  music_synthesizer test(O, I, CLK);
  
  //Assigning test values to input
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0, test);
    for(k = 0; k != L; k = k + 1) begin
      I = $random % 128; 
      #period;
    end
    I = 0;
    #((N/b - L) * period);
    
    //Opening text file
    fd = $fopen("audio_100.txt", "w");
    $fwrite(fd, "%b \n", O);
    $fclose(fd);
    
    $finish;
  end
  
  //Monitor
  initial
    $monitor("i = %d, o = %b", I, O);
  
  //Clock
  initial begin
    CLK = 0;
    forever #(period/2) CLK = ~CLK;
  end
  
endmodule

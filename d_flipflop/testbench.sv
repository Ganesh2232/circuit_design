// Code your testbench here
// or browse Examples
module dff_tb(
);
  
  // step - 1
  // declaring the data types for input and output variables
  reg clk,rst,d_in;
  wire q,qbar;
  
  // step - 2
  
 // instantiation
  d_flipflop dut(clk,rst,d_in,q,qbar);
  
  // step - 3
  // initialization of input variables 
  
  initial 
    begin
      clk = 0;
      rst = 0;
      d_in = 0;
    end 
  
  // generation of clock 
  always #5 clk = ~clk;
  
  // driving the stimulus
  
  initial 
    begin 
      @(negedge clk)
      rst = 1;
      @(negedge clk)
      rst = 0;
      @(negedge clk)
      d_in = 1;
      @(negedge clk)
      d_in = 0;
    end
  
  initial 
    begin
      $monitor("the values of q and qbar are %d %d",q,qbar);
    end
      
      initial 
        begin 
          $dumpfile();
          $dumpvars();
        end 
      
endmodule
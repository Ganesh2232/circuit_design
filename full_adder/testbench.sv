// Code your testbench here
// or browse Examples
module fa_tb(

);
  
  reg a_tb,b_tb,cin_tb;
  wire sum_tb,carry_tb;
  
  full_adder fa(a_tb,b_tb,cin_tb,sum_tb,carry_tb);
  
  initial
    begin
      // initialization of input variables
      a_tb = 0;
      b_tb = 0;
      cin_tb = 0;
      
      #1;
      
      //providing stimulus to design
      a_tb = 1'b0;
      b_tb = 1'b1;
      cin_tb = 1'b1;
      
      #1;
      
      a_tb = 1'b1;
      b_tb = 1'b1;
      cin_tb = 1'b1;
    end
  
  initial
    begin
      
      $monitor("the value of a is %d b is %d c is %d sum is %d carry is %d",a_tb,b_tb,cin_tb,sum_tb,carry_tb);
      
    end
  
  initial
    begin
      $dumpfile();
      $dumpvars();
    end
endmodule
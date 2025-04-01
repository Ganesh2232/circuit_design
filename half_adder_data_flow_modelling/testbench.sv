// Code your testbench here
// or browse Examples
module halfadder_tb();
  reg a,b;
  wire sum,carry;
  half_adder dut(a,b,sum,carry);
  initial 
    begin
      a = 0;
      b = 0;
      #10;
      a = 0;
      b = 1;
      #10;
      a = 1;
      b = 0;
      #10;
      a = 1;
      b = 1;
    end 
  initial 
    begin 
      $monitor("the value of a is %d,b is %d,sum is %d,carry is %d",a,b,sum,carry);
    end
  
  initial 
    begin 
      $dumpfile();
      $dumpvars();
    end 
  
endmodule
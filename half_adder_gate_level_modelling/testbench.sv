// Code your testbench here
// or browse Examples
module boolean_tb();
  reg a,b,c,d;
  wire y;
  
  boolean_function dut(a,b,c,d,y);
    initial 
      begin
        a = 0; b = 0; c = 0; d = 0;
        #10;
        a = 1; b = 0; c = 0; d = 0;
        #10;
        a = 1; b = 1; c = 1; d = 1;
      end 
    
    initial 
      begin 
        $monitor("the values of a is %d,b is %d,c is %d,d is %d,y is %d",a,b,c,d,y);
      end
endmodule
   
    
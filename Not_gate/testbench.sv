// TB code to verify the of design(NOT gate)
// step-1: module name
module tb;
  
  // step-2: hardware connection declaration 
  reg p;
  wire q;
  
  // step-3: instantiation of design module name
  not_gate nt(p,q);
  
  // step-4: input values generation with procedural block
  initial 
    begin
      p=0;
      #1;
      $display("time=%0t,p=%b,q=%b",$time,p,q);
      p=1;
      #1;
      $display("time=%0t,p=%b,q=%b",$time,p,q);
    end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  // step-5: endmodule
endmodule

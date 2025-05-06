// this is NOT gate code
// step-1: module name,port list
module not_gate(p,q);
  
  // step-2: port declaration 
  input p;
  output q;
  
  // step-3: coding functionality with explicit continuous assign statements 
  assign q=~p;
  
  // step-4: endmodule
endmodule

// Code your design here
module boolean_function(input a,b,c,d,output reg y);
  // abc+a'c'+d using gate level modelling 
  wire w1,w2,w3,w4,w5,w6;
  
  and g1(w1,a,b);
  and g2(w2,w1,c);
  not g3(w3,a);
  not g4(w4,c);
  and g5(w5,w3,w4);
  or g6(w6,w5,w2);
  or g7(y,w6,d);
endmodule
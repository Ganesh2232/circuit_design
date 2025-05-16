module srnd(s,r,q,qb);
  input s,r;
  output reg q,qb;
  
  /*assign qb = ~(r & q);
  assign q = ~(s & ~q);*/
  
  assign qb = ~(r & q),
    q = ~(s & ~q);
  
endmodule
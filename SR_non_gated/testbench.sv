module tb;
  reg s,r;
  wire q,qb;
  srnd dut(.s(s),.r(r),.q(q),.qb(qb)); // hardware connection list by name 
  
  initial
    begin
//       $monitor($time,"s=%0d,r=%0d,q=%0d,qb=%0d",s,r,q,qb);
      $monitor("time=%0t,s=%0d,r=%0d,q=%0d,qb=%0d",$time,s,r,q,qb);
      s=0;r=0;
      #1;
      s=0;r=1;
      #1;
      s=1;r=0;
      #1;
      s=1;r=1;
      #1;
    end
           initial 
             begin 
               $dumpfile("dump.vcd");
               $dumpvars;
             end
 endmodule
      
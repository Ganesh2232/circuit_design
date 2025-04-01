// Code your design here
module d_flipflop (input clk,rst,d_in,output reg q,qbar);
  
  always@(posedge clk)
    begin
      if(rst)
        begin 
          q <= 1'b0;
          q <= 1'b1;
        end
      
      else
        begin
          q <= d_in;
          q <= ~d_in;
        end
      
    end
endmodule
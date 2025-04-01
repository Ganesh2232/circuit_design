// Code your design here
module full_adder(
      input a,b,cin,
      output reg sum,carry
);
  
  always@(a,b,cin,sum,carry)
    begin
        sum = a ^ b ^ cin;
      carry = (a & b) | (b & cin) | (cin & a);
    end
endmodule
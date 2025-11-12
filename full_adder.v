// Full Adder using 2 Half Adders + OR Gate
//RITESH POLE.
`include "half_adder.v"

module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

wire sum1, c1, c2;

// First half adder
half_adder HA1 (.A(A), .B(B), .Sum(sum1), .Cout(c1));

// Second half adder
half_adder HA2 (.A(sum1), .B(Cin), .Sum(Sum), .Cout(c2));

// Final carry
or (Cout, c1, c2);

endmodule

// Half Adder - Gate-Level
//RITESH POLE.
module half_adder(
    input A,
    input B,
    output Sum,
    output Cout
);

xor (Sum, A, B);
and (Cout, A, B);

endmodule

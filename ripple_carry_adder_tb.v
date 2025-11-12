// Testbench for 4-bit Ripple Carry Adder
module ripple_carry_adder_tb;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

ripple_carry_adder RCA (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

integer i, j, k;

initial begin
    $display("A    B    Cin | Sum   Cout");
    $display("---------------------------");

    for (i = 0; i < 16; i = i+1) begin
        for (j = 0; j < 16; j = j+1) begin
            for (k = 0; k < 2; k = k+1) begin
                A = i; B = j; Cin = k; #10;
                $display("%b %b  %b  | %b   %b", A, B, Cin, Sum, Cout);
            end
        end
    end
    $stop;
end

endmodule

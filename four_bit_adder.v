`include "veri_modules/full_adder/full_adder.v"

module four_bit_adder (
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry
);

    wire cin;

    assign cin = 1'b0;
    full_adder s0( .a( a[0] ), .b( b[0]), .cin( cin ), .s( sum[0]), .cout( ripple0 ) );
    full_adder s1( .a( a[1] ), .b( b[1]), .cin( ripple0 ), .s( sum[1]), .cout( ripple1 ) );
    full_adder s2( .a( a[2] ), .b( b[2]), .cin( ripple1 ), .s( sum[2]), .cout( ripple2 ) );
    full_adder s3( .a( a[3] ), .b( b[3]), .cin( ripple2 ), .s( sum[3]), .cout( carry ) );

endmodule

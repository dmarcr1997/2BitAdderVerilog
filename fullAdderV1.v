/* Verilog for fullAdderV1
   Damon Rocha
   12June2024
   damrocha@uat.edu
*/



module fullAdderV1(
    //inputs 
    input a,
    input b,
    input c_in,

    //outputs
    output s,
    output c_out
);

    //wire declaration
    wire a_xor_b;
    wire ab_xor_cin;
    wire ab_or_cxab;

    //asign wires
    assign a_xor_b = a ^ b;
    assign axb_xor_cin = a_xor_b ^ c_in;
    assign ab_or_caxb = (a & b) || (a_xor_b & c_in);

    assign s = axb_xor_cin;
    assign c_out = ab_or_caxb;

endmodule

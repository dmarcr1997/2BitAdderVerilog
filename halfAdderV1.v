/* Verilog for halfAdderV1
   Damon Rocha
   12June2024
   damrocha@uat.edu
*/

module halfAdderV1(
    //input a, b
    input a,
    input b,

    //output s, cout
    output s,
    output c
);
    assign s = a ^ b; //make simulation more declarative
    assign c = a & b; //make simulation more declarative

endmodule

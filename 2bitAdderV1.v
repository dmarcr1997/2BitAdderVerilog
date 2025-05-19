/* Verilog for 2bitAdderV1
   Damon Rocha
   12June2024
   damrocha@uat.edu
*/

module twoBitAdderV1(
    //inputs 
    input [1:0] a,
    input [1:0] b,

    //outputs
    output [2:0] s
); //end of module definition and parameters

    //wire declaration
    wire a_0;
    wire b_0;
    wire a_1;
    wire b_1;

    wire s_0;
    wire s_1;
    wire s_2;
    
    wire halfAdd_carry; //carry wire from halfadder to full adder

    //asign wires
    assign a_0 = a[0];
    assign b_0 = b[0];
    assign a_1 = a[1];
    assign b_1 = b[1];
    
    //halfAdder instance 
    halfAdderV1 HalfAdder(.a(a_0), .b(b_0), .s(s_0), .c(halfAdd_carry));

    //fullAdder instance
    fullAdderV1 FullAdder(.a(a_1), .b(b_1), .c_in(halfAdd_carry), .s(s_1), .c_out(s_2));
    
    //assign output from half and full adder
    assign s[0] = s_0;
    assign s[1] = s_1;
    assign s[2] = s_2;
    
endmodule //end of module block

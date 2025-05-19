module twoBitAdderV1_tb;
wire t_s0;
wire t_s1;
wire t_s2;

reg t_a0, t_a1, t_b0, t_b1;

localparam DURATION = 90;
// Define intermediate wires for concatenated inputs and outputs
wire [1:0] a, b;
wire [2:0] s;

// Assign values to the new wires
assign a = {t_a0, t_a1};
assign b = {t_b0, t_b1};
assign s = {t_s0, t_s1, t_s2};

twoBitAdderV1 my_gate(.a(a), .b(b), .s(s));

initial
begin

    $monitor(t_a0, t_a1, t_b0, t_b1, t_s0, t_s1, t_s2);
    //1
    t_a0 = 1'b0;
    t_a1 = 1'b0;
    
    t_b0 = 1'b0;
    t_b1 = 1'b0;

    //2
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b0;

    t_b0 = 1'b1;
    t_b1 = 1'b0;

    //3
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b0;

    t_b0 = 1'b0;
    t_b1 = 1'b1;

    //4
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b1;

    t_b0 = 1'b1;
    t_b1 = 1'b1;

    //5
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b1;

    t_b0 = 1'b0;
    t_b1 = 1'b0;

    //6
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b1;

    t_b0 = 1'b1;
    t_b1 = 1'b0;

    //7
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b1;

    t_b0 = 1'b0;
    t_b1 = 1'b1;

    //8
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b1;

    t_b0 = 1'b1;
    t_b1 = 1'b1;

    //9
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b0;

    t_b0 = 1'b0;
    t_b1 = 1'b0;

    //10
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b0;

    t_b0 = 1'b1;
    t_b1 = 1'b0;

    //11
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b0;

    t_b0 = 1'b0;
    t_b1 = 1'b1;

    //12
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b0;

    t_b0 = 1'b1;
    t_b1 = 1'b1;

    //13
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b1;

    t_b0 = 1'b0;
    t_b1 = 1'b0;

    //14
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b1;

    t_b0 = 1'b1;
    t_b1 = 1'b0;

    //15
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b1;

    t_b0 = 1'b0;
    t_b1 = 1'b1;

    //16
    #5
    t_a0 = 1'b1;
    t_a1 = 1'b1;

    t_b0 = 1'b1;
    t_b1 = 1'b1;

    //DONE
    #5
    t_a0 = 1'b0;
    t_a1 = 1'b0;

    t_b0 = 1'b0;
    t_b1 = 1'b0;

end

initial begin

    //create sim output files
    $dumpfile("2bitAdderV1_tb.vcd");
    $dumpvars(0, twoBitAdderV1_tb);

    //wait for simulation to end
    #(DURATION)

    //notification on simulation end
    $display("Finished");
    $finish;
end
endmodule
    
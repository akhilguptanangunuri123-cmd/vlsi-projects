module full_adder_tb();
    reg a,b,cin;
    wire sum,cout;

    full_adder dut(a,b,cin,sum,cout);

    initial 
    begin
        a = 1'b1;
        b = 1'b1;
        cin = 1'b0;
        #10;

        a = 1'b0;
        b = 1'b1;
        cin = 1'b1;
    end
endmodule

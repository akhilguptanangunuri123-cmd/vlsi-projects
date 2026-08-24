module half_tb(
    );
    reg a_tb,b_tb;
    wire sum_tb,carry_tb;

    half_add_beh dut(a_tb,b_tb,sum_tb,carry_tb);
    
    initial
    begin
        a_tb = 1'b0;
        b_tb = 1'b1;

        $monitor("the value of a_tb is %b and b_tb is %b and sum and carry are %b %b",
        a_tb,b_tb,sum_tb,carry_tb);

        #5;
        a_tb = 1'b1;
        b_tb = 1'b0;
    end
endmodule

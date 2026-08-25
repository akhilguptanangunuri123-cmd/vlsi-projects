module fa_using_ha_tb();

    reg a_f, b_f, cin_f;
    wire sum_f, carry_f;

    fa_using_ha dut(
        .a_f(a_f),
        .b_f(b_f),
        .cin_f(cin_f),
        .sum_f(sum_f),
        .carry_f(carry_f)
    );

    initial
    begin
        a_f = 1'b1;
        b_f = 1'b1;
        cin_f = 1'b0;
        #10;

        a_f = 1'b0;
        b_f = 1'b1;
        cin_f = 1'b1;
        #10;

        $finish;
    end

endmodule

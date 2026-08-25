module fa_using_ha(
input a_f,b_f,cin_f,output sum_f,carry_f
    );
    wire w1,w2,w3;
    ha_ad h1(.a(a_f),.b(b_f),.sum(w1),.carry(w2));
    ha_ad h2(.a(w1),.b(cin_f),.sum(sum_f),.carry(w3));
    or(carry_f,w2,w3);
endmodule

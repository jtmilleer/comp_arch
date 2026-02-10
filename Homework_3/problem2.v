module problem_2 (output y, input a, b, c);
    always @(a or b or c) begin
        y = a | c;
    end
endmodule
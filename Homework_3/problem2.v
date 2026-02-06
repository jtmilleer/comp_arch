module problem_2 (output y, input a, b, c);
    always @(a or b or c) begin
        if (a == 1) begin
            y = 1;
        end else y = c;
    end
endmodule
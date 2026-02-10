//output: one bit registers holding sum and carry out of a full adder
//input: 3 wires for the two bits being added and the carry in
module fullAdder (
    output sum,
    output cout,
    input a, b, cin
);
    
    reg sum, cout;
    always @(a or b or cin) begin
        sum = #2 a ^ b ^ cin;
        cout = #2 (a & b)|(a & cin)|(b & cin);
    end
endmodule


//output: 4 bit sum register, wire carry out
//input: 2 4 bit registers each holding number, wire for carry in
module fourBitAdder (
    output [3:0] sum, 
    output cout, 
    input [3:0] a, 
    input [3:0] b, 
    input cin
);
    wire c1, c2, c3;
    
    fullAdder f1 (sum[0], c1, a[0], b[0], cin);
    fullAdder f2 (sum[1], c2, a[1], b[1], c1);
    fullAdder f3 (sum[2], c3, a[2], b[2], c2);
    fullAdder f4 (sum[3], cout, a[3], b[3], c3);
endmodule
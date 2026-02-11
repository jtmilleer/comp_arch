
//outputs: 4 bit registers a and b, wire cin for carry in
module problem3_test(output reg [3:0] a, output reg [3:0] b, output reg cin);
    //reg [3:0] a, b;
    //reg cin;
    //reg cin;
    //wire [3:0] sum;
    //wire cout;
    //fourBitAdder f (a, b, cin, sum, cout);
    initial begin
        $monitor($time,, "a=%b, b=%b, cin=%b", a, b, cin);
        #10 a = 4'b0000; b = 4'b0000; cin = 0; 
        #10 a = 4'b1000; b = 4'b0001; cin = 0; 
        #10 a = 4'b1111; b = 4'b0001; cin = 0; 
        #10 a = 4'b0100; b = 4'b0100; cin = 1; 
        #10 a = 4'b1000; b = 4'b1000; cin = 1;  
    end
endmodule
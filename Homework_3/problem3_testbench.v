
module problem3_testbench ();
    
    wire [3:0]            x,y;  //connects numbers being added from test to the four bit adder
    wire                  cin;  //connects carry in from test to the four bit adder
    wire[3:0]             out;  //output of four bit adder
    wire                  cout; //carry out of four bit adder

    //initialize the test and the four bit adder

    //x is first number, y is second number, cin is input for carry in on adder
    problem3_test        test(x,y,cin); 
    
    //out is sum, cout is carry out, x and y are numbers being added, cin is carry in
    fourBitAdder          f(out, cout, x, y, cin); 


endmodule
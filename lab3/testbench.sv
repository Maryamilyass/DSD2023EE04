module lab2_tsb;

logic a1;
logic b1;
logic c1;
logic x1;
logic y1;
localparam period =20;
lab2 UUT(
.a(a1),
.b(b1),
.c(c1),
.x(x1),
.y(y1)
);
initial //initial block executes only once
begin
// Provide different combinations of the inputs to check validity of code
a1 = 0; b1 = 0; c1 = 0;
#period;
a1 = 0; b1 = 0; c1 = 1;
#period;
a1 = 0; b1 = 1; c1 = 0;
#period;
a1 = 0; b1 = 1; c1 = 1;
#period;
a1 = 1; b1 = 0; c1 = 0;
#period;
a1 = 1; b1 = 0; c1 = 1;
#period;
a1 = 1; b1 = 1; c1 = 0;
#period;
a1 = 1; b1 = 1; c1 = 1;
#period;
$stop;
end
initial
begin
/*the following system task will print out the signal values
every time they change on the Transcript Window */
$monitor("y=%b,x=%b, a=%b, b=%b, c=%b", y1,x1,a1,b1,c1);
end
endmodule

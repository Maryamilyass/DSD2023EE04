module lab4_tsb;
  logic [1:0] p;   // Declare p as a 2-bit vector
  logic [1:0] q;   // Declare q as a 2-bit vector
  logic m;
  logic n;
  logic o;
  localparam period = 10;

  lab4 foo (
    .a(p),
    .b(q),
    .r(m),
    .g(n),
    .bl(o)   
  );

  initial begin
    p = 2'b00; q = 2'b00; #period;
    p = 2'b00; q = 2'b01; #period;
    p = 2'b00; q = 2'b10; #period;
    p = 2'b00; q = 2'b11; #period;
    p = 2'b01; q = 2'b00; #period;
    p = 2'b01; q = 2'b01; #period;
    p = 2'b01; q = 2'b10; #period;
    p = 2'b01; q = 2'b11; #period;
    p = 2'b10; q = 2'b00; #period;
    p = 2'b10; q = 2'b01; #period;
    p = 2'b10; q = 2'b10; #period;
    p = 2'b10; q = 2'b11; #period;
    p = 2'b11; q = 2'b00; #period;
    p = 2'b11; q = 2'b01; #period;
    p = 2'b11; q = 2'b10; #period;
    p = 2'b11; q = 2'b11; #period;
    $stop;
  end

  initial begin
    $monitor(" r=%b, g=%b, bl=%b, a=%b, b=%b", m, n, o, p, q);
  end
endmodule

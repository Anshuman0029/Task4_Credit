// Code your testbench here
// or browse Examples
module top;

wire  out;
reg  I0;
reg  I1;
reg  I2;
reg  I3;
reg s0, s1;

  mux name(.out(out), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .s0(s0), .s1(s1));
 initial begin


     s0 = 2'b00; s1 = 2'b00; I0=1; I1=0; I2=0; I3=0;
     #5
   $display("I0=%d, I1=%d, I2=%d, I3=%d, s0 = %d, s1 = %d  output=%d",I0,I1,I2,I3,s0, s1, out);
   
     s0 = 2'b00; s1 = 2'b01; I0=0; I1=0; I2=1; I3=0;
     #5
     $display("I0=%d, I1=%d, I2=%d, I3=%d, s0 = %d, s1 = %d  output=%d",I0,I1,I2,I3,s0, s1, out);
   
     s0 = 2'b01; s1 = 2'b00; I0=0; I1=1; I2=0; I3=0;
     #5
      $display("I0=%d, I1=%d, I2=%d, I3=%d, s0 = %d, s1 = %d  output=%d",I0,I1,I2,I3,s0, s1, out);
   
     s0 = 2'b01; s1 = 2'b01; I0=0; I1=0; I2=0;I3=1;
     #5
      $display("I0=%d, I1=%d, I2=%d, I3=%d, s0 = %d, s1 = %d  output=%d",I0,I1,I2,I3,s0, s1, out);
   
 $finish;

end
  
endmodule


    
// // // Code your design here

module mux(out,I0,I1,I2,I3,s0,s1);
  input I0,I1,I2,I3,s0, s1;
  
  output out;
  reg out, not_s0, not_s1;
  reg T1, T2, T3, T4;
  
  always @(I0 or I1 or I2 or I3 or s0, s1) begin
     not_s0 = ~s0;            
     not_s1 = ~s1;            
    T1 = I0 & not_s0 & not_s1 ;     
    T2 = I1 & s0 & not_s1;
    T3 = I2 & not_s0 & s1;
    T4 = I3 & s0 & s1;           
    
    out = T1 | T2 | T3 | T4;
    
  end
  
endmodule
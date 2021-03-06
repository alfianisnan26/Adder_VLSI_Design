// DSCH 3.8
// 07/04/2021 16.31.48
// E:\Tugas\Semester_6\PVL\adder\adder.sch

module adder( Cin,A,B,S,Cout);
 input Cin,A,B;
 output S,Cout;
 wire w4,w5,w8,;
 xor #(2) xor2_1(S,Cin,w4);
 and #(2) and2_2(w5,w4,Cin);
 and #(2) and2_3(w8,A,B);
 xor #(2) xor2_4(w4,B,A);
 or #(2) or2_5(Cout,w5,w8);
endmodule

// Simulation parameters in Verilog Format
always
#200 Cin=~Cin;
#400 A=~A;
#800 B=~B;

// Simulation parameters
// Cin CLK 1 1
// A CLK 2 2
// B CLK 4 4

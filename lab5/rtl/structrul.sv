`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 07:58:56 PM
// Design Name: 
// Module Name: rtl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab5(

    input logic [3:0] n,      
    input logic [2:0] sel,      
    output logic [7:0] segments,
    output logic [7:0] anode
);

    assign segments[0] = (~n[0] & n[1] & ~n[2] & ~n[3]) | (~n[0] & ~n[1] & ~n[2] & n[3]) | (n[0] & n[1] & ~n[2] & n[3]) | (n[0] & ~n[1] & n[2] & n[3]);

    assign segments[1] = (n[0] & n[2] & n[3]) | (n[1] & n[2] & ~n[3]) | (n[0] & n[1] & ~n[3]) | (~n[0] & n[1] & ~n[2] & n[3]);

    assign segments[2] = (n[0] & n[1] & n[2]) | (n[0] & n[1] & ~n[3]) | (~n[0] & ~n[1] & n[2] & ~n[3]);

    assign segments[3] = (n[1] & n[2] & n[3]) | (~n[0] & n[1] & ~n[2] & ~n[3]) |  (~n[0] & ~n[1] & ~n[2] & n[3]) | (n[0] & ~n[1] & n[2] & ~n[3]);

    assign segments[4] = (~n[0] & n[3]) | (~n[0] & n[1] & ~n[2]) | (~n[1] & ~n[2] & n[3]);

    assign segments[5] = (~n[0] & ~n[1] & n[3]) | (~n[0] & n[2] & n[3]) | (~n[0] & ~n[1] & n[2]) | (n[0] & n[1] & ~n[2] & n[3]);

    assign segments[6] = (~n[0] & ~n[1] & ~n[2]) | (n[0] & n[1] & ~n[2] & ~n[3]) | (~n[0] & n[1] & n[2] & n[3]);

    assign segments[7] = 0;
    // Anode control logic 
    assign anode[0] = (~sel[2]&sel[0] | sel[1] | sel[2]);
    assign anode[1] = (~sel[2]&~sel[0] | sel[1] | sel[2]);
    assign anode[2] = (~sel[2]&sel[0] | ~sel[1] | sel[2]);
    assign anode[3] = (~sel[0]&~sel[2] | ~sel[1] | sel[2]);
    assign anode[4] = (sel[0]&sel[2] | sel[1] | ~sel[2]);
    assign anode[5] = (~sel[0] | sel[1] | sel[2] | ~sel[2]);
    assign anode[6] = (sel[0]& sel[2] | ~sel[1] | ~sel[2]);
    assign anode[7] = (~sel[0]&sel[1] | ~sel[1] | ~sel[2]);

endmodule

   

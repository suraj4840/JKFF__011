RTL code:



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/18/2023 09:12:36 AM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(clk,rst,j,k,q);
input clk,rst,j,k;
output reg q;

always @(posedge clk,posedge rst)
begin
     if(rst)
        q <= 1'b0;
     else 
        q <= (j&(~q))|((~k)&q);
end           


endmodule


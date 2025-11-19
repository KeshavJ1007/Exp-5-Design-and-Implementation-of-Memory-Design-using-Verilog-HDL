module ram(
    input clk,rst,en,
    input [7:0]datain,
    input [9:0]address,
    output reg [7:0]dataout
    );
    reg [7:0]ram[1023:0];
    always@(posedge clk)
        begin
            if(rst)
                dataout <= 8'b0;
            else if(en)
                ram[address] <= datain;
            else 
                dataout <= ram[address];        
        end
endmodule
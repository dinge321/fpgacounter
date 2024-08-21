module contador(
input clk,rst,
output reg[3:0] display, output reg[7:0] number
);

reg[26:0] timer;
reg[14:0] nn;
always @(posedge clk)
begin
	if (~rst)begin
		timer=0;
		nn=0;
	end
	
	else if(timer==30'd67108863)begin
		nn=nn+1;
		timer=0;
		if(nn==14'd10)begin
			nn=0;
		end
	end
	else begin
		timer=timer+1;
		display<=4'b111;
	end
	if(nn==14'd0)begin
		number<=8'b01000000;
	end
	if(nn==14'd1)begin
		number<=8'b01001111;
	end
	if(nn==14'd2)begin
		number<=8'b00100100;
	end
	if(nn==14'd3)begin
		number<=8'b00110000;
	end
	if(nn==14'd3)begin
		number<=8'b00110000;
	end
	if(nn==14'd4)begin
		number<=8'b00011001;
	end
	if(nn==14'd5)begin
		number<=8'b00010010;
	end
	if(nn==14'd6)begin
		number<=8'b00000010;
	end
	if(nn==14'd7)begin
		number<=8'b01111000;
	end
	if(nn==14'd8)begin
		number<=8'b00000000;
	end
	if(nn==14'd9)begin
		number<=8'b00011000;
	end
end	
/*
binario leds
//number//
8 bit puntito
7 bit G linea al medio 
6 bit F
5 bit E
4 bit D
3 bit C
2 bit B
1 bit Alinea de arriba y sigue a la derecha
//display//
4 bit 1 display a la izquierda
3 bit 2 dsplay a la izquierda
2 bit 2 display a la derecha
1 bit display a la derecha

*/
endmodule
module circuito_uno(iA, iB, iC, oX, oY);
    input  iA, iB, iC;
    output oX, oY;
    wire   e;

    assign oX = (iA & iB) | ~iC;   // e = A&B ; oX = e | ~C
    assign oY = ~iC;
endmodule
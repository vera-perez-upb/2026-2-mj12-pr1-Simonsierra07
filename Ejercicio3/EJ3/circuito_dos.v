module circuito_dos (iA, iB, iC, iD, oX, oY);
    input  iA, iB, iC, iD;
    output oX, oY;

    assign oX = iA | (iB & iC) | (~iB & iD);        // x = A + BC + B'D
    assign oY = (~iB & iC) | (iB & ~iC & ~iD);       // y = B'C + BC'D'
endmodule
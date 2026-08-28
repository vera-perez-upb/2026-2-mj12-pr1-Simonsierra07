module Compuertas(iA, iB, iC, oW, oX, oY, oZ);
    input  iA, iB, iC;
    output oW, oX, oY, oZ;

    assign oW = iA & iB & iC;   // AND 3-In
    assign oX = iA | iB | iC;   // OR 3-In
    assign oY = ~iC;            // NOT
    assign oZ = iA ^ iB ^ iC;   // XOR (OREX) 3-In

endmodule
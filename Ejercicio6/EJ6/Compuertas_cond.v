module Compuertas_cond(iA, iB, iC, oW, oX, oY, oZ);
    input  iA, iB, iC;
    output oW, oX, oY, oZ;

    // Compuerta AND 3-In
    assign oW = ((iA==1'b1) && (iB==1'b1) && (iC==1'b1)) ? 1'b1 : 1'b0;

    // Compuerta OR 3-In
    assign oX = ((iA==1'b0) && (iB==1'b0) && (iC==1'b0)) ? 1'b0 : 1'b1;

    // Compuerta NOT
    assign oY = (iA == 1'b0) ? 1'b1 : 1'b0;

    // Compuerta XOR 2-In
    assign oZ = ((iA==1'b0) && (iB==1'b1)) ? 1'b1 :
                (((iA==1'b1) && (iB==1'b0)) ? 1'b1 : 1'b0);

endmodule
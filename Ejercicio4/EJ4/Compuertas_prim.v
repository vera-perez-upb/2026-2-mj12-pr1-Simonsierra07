module Compuertas_prim(iA, iB, iC, oW, oX, oY, oZ);
    input  iA, iB, iC;
    output oW, oX, oY, oZ;

    and  g1(oW, iA, iB, iC);   // AND 3-In
    or   g2(oX, iA, iB, iC);   // OR 3-In
    not  g3(oY, iC);           // NOT
    xor  g4(oZ, iA, iB, iC);   // XOR 3-In

endmodule
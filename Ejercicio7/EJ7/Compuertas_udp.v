module Compuertas_udp(oW, oX, oY, oZ, iA, iB, iC);
    input  iA, iB, iC;
    output oW, oX, oY, oZ;

    MiAND(oW, iA, iB, iC);     // AND 3-In
    MiOR(oX, iA, iB, iC);      // OR 3-In
    MiNOT(oY, iB);             // NOT
    MiOREX(oZ, iA, iB, iC);    // OREX 3-In

endmodule

primitive MiOREX(X,A,B,C);
    output X;
    input A,B,C;
    table
        0 0 0 : 0;
        0 0 1 : 1;
        0 1 0 : 1;
        0 1 1 : 0;
        1 0 0 : 1;
        1 0 1 : 0;
        1 1 0 : 0;
        1 1 1 : 1;
    endtable
endprimitive

primitive MiAND(X,A,B,C);
    output X;
    input A,B,C;
    table
        0 0 0 : 0;
        0 0 1 : 0;
        0 1 0 : 0;
        0 1 1 : 0;
        1 0 0 : 0;
        1 0 1 : 0;
        1 1 0 : 0;
        1 1 1 : 1;
    endtable
endprimitive

primitive MiOR(X,A,B,C);
    output X;
    input A,B,C;
    table
        0 0 0 : 0;
        0 0 1 : 1;
        0 1 0 : 1;
        0 1 1 : 1;
        1 0 0 : 1;
        1 0 1 : 1;
        1 1 0 : 1;
        1 1 1 : 1;
    endtable
endprimitive

primitive MiNOT(X,A);
    output X;
    input A;
    table
        0 : 1;
        1 : 0;
    endtable
endprimitive
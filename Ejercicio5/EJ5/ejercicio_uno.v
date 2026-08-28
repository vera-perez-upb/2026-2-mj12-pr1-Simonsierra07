module ejercicio_uno(iA, iB, iC, oX, oY);
    input  iA, iB, iC;
    output oX, oY;
    wire   e;

    and g1(e, iA, iB);     // e = A AND B
    not g2(oY, iC);        // oY = NOT C
    or  g3(oX, e, oY);     // oX = e OR oY
endmodule
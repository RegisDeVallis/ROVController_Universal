void printToArduino(int p1,  int p2,  int p3,  int p4, int p5, int p6, int p7, int p8, int p9, int p10, int p11, int p12) {
  if (!commsError) {
    p1 += 127;
    p2 += 127;
    p3 += 127;
    p4 += 127;
    p5 += 127;
    p6 += 127;
    p7 += 127;
    p8 += 127;
    p9 += 127;
    p10 += 127;
    p11 += 127;
    p12 += 127;
    println('T' + hex(p1,2) + hex(p2,2) + hex(p3,2) + hex(p4,2) + hex(p5,2) + hex(p6,2) + hex(p7,2) + hex(p8,2) + hex(p9,2) + hex(p10,2) + hex(p11,2) + hex(p12,2));
    port.write('T' + hex(p1,2) + hex(p2,2) + hex(p3,2) + hex(p4,2) + hex(p5,2) + hex(p6,2) + hex(p7,2) + hex(p8,2) + hex(p9,2) + hex(p10,2) + hex(p11,2) + hex(p12,2));
  }
}

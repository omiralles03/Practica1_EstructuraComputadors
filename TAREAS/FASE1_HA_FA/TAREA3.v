//: version "1.8.7"

module main;    //: root_module
wire w6;    //: /sn:0 {0}(296,73)(296,131){1}
wire w4;    //: /sn:0 {0}(323,162)(405,162){1}
wire w0;    //: /sn:0 {0}(175,175)(221,175){1}
wire w3;    //: /sn:0 {0}(323,201)(405,201){1}
wire w5;    //: /sn:0 {0}(253,73)(253,133){1}
//: enddecls

  led g4 (.I(w4));   //: @(412,162) /sn:0 /R:3 /w:[ 1 ] /type:2
  //: switch g3 (w0) @(158,175) /sn:0 /w:[ 0 ] /st:1
  //: switch g2 (w6) @(296,60) /sn:0 /R:3 /w:[ 0 ] /st:1
  //: switch g1 (w5) @(253,60) /sn:0 /R:3 /w:[ 0 ] /st:1
  FA g6 (.B(w6), .A(w5), .Cin(w0), .Cout(w3), .S(w4));   //: @(222, 132) /sz:(100, 90) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Ri0>0 Ri1>0 ]
  led g5 (.I(w3));   //: @(412,201) /sn:0 /R:3 /w:[ 1 ] /type:2

endmodule

module FA(Cin, B, S, Cout, A);
//: interface  /sz:(100, 90) /bd:[ Ti0>B(74/100) Ti1>A(31/100) Li0>Cin(43/90) Ri0>Cout(69/90) Ri1>S(30/90) ]
input B;    //: /sn:0 {0}(150,65)(150,107){1}
//: {2}(152,109)(188,109){3}
//: {4}(150,111)(150,159){5}
//: {6}(152,161)(187,161){7}
//: {8}(150,163)(150,182)(187,182){9}
input A;    //: /sn:0 {0}(132,65)(132,102){1}
//: {2}(134,104)(188,104){3}
//: {4}(132,106)(132,128){5}
//: {6}(134,130)(188,130){7}
//: {8}(132,132)(132,156)(187,156){9}
input Cin;    //: /sn:0 {0}(168,65)(168,118){1}
//: {2}(170,120)(259,120)(259,111)(278,111){3}
//: {4}(168,122)(168,133){5}
//: {6}(170,135)(188,135){7}
//: {8}(168,137)(168,187)(187,187){9}
output Cout;    //: /sn:0 /dp:1 {0}(301,149)(340,149){1}
output S;    //: /sn:0 /dp:1 {0}(299,109)(340,109){1}
wire w20;    //: /sn:0 {0}(208,159)(225,159)(225,148)(234,148){1}
wire w8;    //: /sn:0 {0}(208,185)(262,185)(262,151)(280,151){1}
wire w14;    //: /sn:0 {0}(255,146)(280,146){1}
wire w11;    //: /sn:0 {0}(209,133)(225,133)(225,143)(234,143){1}
wire w2;    //: /sn:0 {0}(209,106)(278,106){1}
//: enddecls

  or g8 (.I0(w14), .I1(w8), .Z(Cout));   //: @(291,149) /sn:0 /delay:" 3" /w:[ 1 1 0 ]
  xor g4 (.I0(w2), .I1(Cin), .Z(S));   //: @(289,109) /sn:0 /delay:" 4" /w:[ 1 3 0 ]
  //: joint g16 (B) @(150, 109) /w:[ 2 1 -1 4 ]
  xor g3 (.I0(B), .I1(A), .Z(w2));   //: @(199,106) /sn:0 /delay:" 4" /w:[ 3 3 0 ]
  //: joint g17 (A) @(132, 104) /w:[ 2 1 -1 4 ]
  //: input g2 (Cin) @(168,63) /sn:0 /R:3 /w:[ 0 ]
  //: input g1 (B) @(150,63) /sn:0 /R:3 /w:[ 0 ]
  //: output g10 (S) @(337,109) /sn:0 /w:[ 1 ]
  and g6 (.I0(A), .I1(Cin), .Z(w11));   //: @(199,133) /sn:0 /delay:" 3" /w:[ 7 7 0 ]
  and g9 (.I0(A), .I1(B), .Z(w20));   //: @(198,159) /sn:0 /delay:" 3" /w:[ 9 7 0 ]
  or g7 (.I0(w11), .I1(w20), .Z(w14));   //: @(245,146) /sn:0 /delay:" 3" /w:[ 1 1 0 ]
  //: joint g12 (B) @(150, 161) /w:[ 6 5 -1 8 ]
  //: joint g14 (A) @(132, 130) /w:[ 6 5 -1 8 ]
  //: output g11 (Cout) @(337,149) /sn:0 /w:[ 1 ]
  and g5 (.I0(B), .I1(Cin), .Z(w8));   //: @(198,185) /sn:0 /delay:" 3" /w:[ 9 9 0 ]
  //: joint g15 (Cin) @(168, 120) /w:[ 2 1 -1 4 ]
  //: input g0 (A) @(132,63) /sn:0 /R:3 /w:[ 0 ]
  //: joint g13 (Cin) @(168, 135) /w:[ 6 5 -1 8 ]

endmodule

//: version "1.8.7"

module PFA(Cin, B, Pi, S, A, Gi);
//: interface  /sz:(99, 88) /bd:[ Ti0>A(28/99) Ti1>B(69/99) Li0>Cin(46/88) Ro0<Gi(65/88) Ro1<Pi(45/88) Ro2<S(25/88) ]
input B;    //: /sn:0 {0}(122,203)(136,203){1}
//: {2}(140,203)(171,203){3}
//: {4}(138,205)(138,243){5}
//: {6}(140,245)(210,245){7}
//: {8}(138,247)(138,271)(210,271){9}
output Gi;    //: /sn:0 /dp:1 {0}(231,269)(254,269){1}
input A;    //: /sn:0 {0}(121,185)(143,185){1}
//: {2}(147,185)(161,185)(161,198)(171,198){3}
//: {4}(145,187)(145,238){5}
//: {6}(147,240)(210,240){7}
//: {8}(145,242)(145,266)(210,266){9}
input Cin;    //: /sn:0 {0}(122,220)(210,220){1}
output Pi;    //: /sn:0 /dp:1 {0}(231,243)(255,243){1}
output S;    //: /sn:0 /dp:1 {0}(231,218)(255,218){1}
wire w3;    //: /sn:0 /dp:1 {0}(210,215)(201,215)(201,201)(192,201){1}
//: enddecls

  //: joint g8 (B) @(138, 203) /w:[ 2 -1 1 4 ]
  xor g4 (.I0(w3), .I1(Cin), .Z(S));   //: @(221,218) /sn:0 /delay:" 4" /w:[ 0 1 0 ]
  xor g3 (.I0(A), .I1(B), .Z(w3));   //: @(182,201) /sn:0 /delay:" 4" /w:[ 3 3 1 ]
  //: input g2 (Cin) @(120,220) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(120,203) /sn:0 /w:[ 0 ]
  //: joint g10 (A) @(145, 240) /w:[ 6 5 -1 8 ]
  or g6 (.I0(A), .I1(B), .Z(Pi));   //: @(221,243) /sn:0 /delay:" 3" /w:[ 7 7 0 ]
  //: joint g9 (B) @(138, 245) /w:[ 6 5 -1 8 ]
  //: joint g7 (A) @(145, 185) /w:[ 2 -1 1 4 ]
  //: output g12 (Pi) @(252,243) /sn:0 /w:[ 1 ]
  //: output g11 (S) @(252,218) /sn:0 /w:[ 1 ]
  and g5 (.I0(A), .I1(B), .Z(Gi));   //: @(221,269) /sn:0 /delay:" 3" /w:[ 9 9 0 ]
  //: input g0 (A) @(119,185) /sn:0 /w:[ 0 ]
  //: output g13 (Gi) @(251,269) /sn:0 /w:[ 1 ]

endmodule

module main;    //: root_module
wire w6;    //: /sn:0 {0}(222,267)(246,267){1}
wire w7;    //: /sn:0 {0}(316,196)(316,220){1}
wire w4;    //: /sn:0 {0}(347,266)(390,266){1}
wire w3;    //: /sn:0 {0}(347,286)(375,286)(375,312)(390,312){1}
wire w2;    //: /sn:0 {0}(275,196)(275,220){1}
wire w5;    //: /sn:0 {0}(347,246)(376,246)(376,219)(391,219){1}
//: enddecls

  //: switch g4 (w6) @(205,267) /sn:0 /w:[ 0 ] /st:0
  led g3 (.I(w3));   //: @(397,312) /sn:0 /R:3 /w:[ 1 ] /type:2
  led g2 (.I(w4));   //: @(397,266) /sn:0 /R:3 /w:[ 1 ] /type:2
  led g1 (.I(w5));   //: @(398,219) /sn:0 /R:3 /w:[ 1 ] /type:2
  //: switch g6 (w7) @(316,183) /sn:0 /R:3 /w:[ 0 ] /st:1
  //: switch g5 (w2) @(275,183) /sn:0 /R:3 /w:[ 0 ] /st:1
  PFA g0 (.B(w7), .A(w2), .Cin(w6), .S(w5), .Pi(w4), .Gi(w3));   //: @(247, 221) /sz:(99, 88) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Ro0<0 Ro1<0 Ro2<0 ]

endmodule

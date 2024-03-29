//: version "1.8.7"

module HA(C, S, B, A);
//: interface  /sz:(148, 128) /bd:[ Li0>B(102/128) Li1>A(35/128) Ro0<C(103/128) Ro1<S(38/128) ]
input B;    //: /sn:0 {0}(197,310)(262,310)(262,284)(288,284){1}
//: {2}(292,284)(337,284){3}
//: {4}(290,286)(290,332)(343,332){5}
input A;    //: /sn:0 {0}(198,279)(304,279){1}
//: {2}(308,279)(337,279){3}
//: {4}(306,281)(306,327)(343,327){5}
output C;    //: /sn:0 /dp:1 {0}(364,330)(448,330){1}
output S;    //: /sn:0 /dp:1 {0}(358,282)(437,282)(437,281)(447,281){1}
//: enddecls

  xor g4 (.I0(A), .I1(B), .Z(S));   //: @(348,282) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  //: output g3 (C) @(445,330) /sn:0 /w:[ 1 ]
  //: output g2 (S) @(444,281) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(195,310) /sn:0 /w:[ 0 ]
  //: joint g6 (A) @(306, 279) /w:[ 2 -1 1 4 ]
  //: joint g7 (B) @(290, 284) /w:[ 2 -1 1 4 ]
  and g5 (.I0(A), .I1(B), .Z(C));   //: @(354,330) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: input g0 (A) @(196,279) /sn:0 /w:[ 0 ]

endmodule

module FA(B, A, S, Co, Ci);
//: interface  /sz:(40, 40) /bd:[ ]
input B;    //: /sn:0 {0}(337,288)(441,288){1}
input A;    //: /sn:0 {0}(336,221)(441,221){1}
output Co;    //: /sn:0 /dp:1 {0}(1026,295)(1073,295){1}
input Ci;    //: /sn:0 {0}(706,291)(771,291){1}
output S;    //: /sn:0 /dp:1 {0}(921,227)(1078,227){1}
wire w3;    //: /sn:0 {0}(591,224)(771,224){1}
wire w8;    //: /sn:0 /dp:1 {0}(1005,292)(921,292){1}
wire w2;    //: /sn:0 {0}(591,289)(640,289)(640,332)(977,332)(977,297)(1005,297){1}
//: enddecls

  //: input g4 (B) @(335,288) /sn:0 /w:[ 0 ]
  //: input g3 (A) @(334,221) /sn:0 /w:[ 0 ]
  or g2 (.I0(w8), .I1(w2), .Z(Co));   //: @(1016,295) /sn:0 /delay:" 5" /w:[ 0 1 0 ]
  HA g1 (.A(w3), .B(Ci), .S(S), .C(w8));   //: @(772, 189) /sz:(148, 128) /sn:0 /p:[ Li0>1 Li1>1 Ro0<0 Ro1<1 ]
  //: output g6 (S) @(1075,227) /sn:0 /w:[ 1 ]
  //: output g7 (Co) @(1070,295) /sn:0 /w:[ 1 ]
  //: input g5 (Ci) @(704,291) /sn:0 /w:[ 0 ]
  HA g0 (.A(A), .B(B), .S(w3), .C(w2));   //: @(442, 186) /sz:(148, 128) /sn:0 /p:[ Li0>1 Li1>1 Ro0<0 Ro1<0 ]

endmodule

module main;    //: root_module
wire w6;    //: /sn:0 {0}(695,246)(695,288){1}
wire w3;    //: /sn:0 {0}(659,505)(659,453){1}
wire w0;    //: /sn:0 {0}(527,370)(569,370){1}
wire w1;    //: /sn:0 {0}(837,365)(758,365){1}
wire w5;    //: /sn:0 {0}(623,246)(623,288){1}
//: enddecls

  //: switch g4 (w6) @(695,233) /sn:0 /R:3 /w:[ 0 ] /st:0
  FA g8 (.B(w6), .A(w5), .Ci(w0), .S(w3), .Co(w1));   //: @(570, 289) /sz:(187, 163) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<1 ]
  //: switch g3 (w5) @(623,233) /sn:0 /R:3 /w:[ 0 ] /st:0
  led g2 (.I(w3));   //: @(659,512) /sn:0 /R:2 /w:[ 0 ] /type:3
  led g1 (.I(w1));   //: @(844,365) /sn:0 /R:3 /w:[ 0 ] /type:3
  //: switch g0 (w0) @(510,370) /sn:0 /w:[ 0 ] /st:0

endmodule

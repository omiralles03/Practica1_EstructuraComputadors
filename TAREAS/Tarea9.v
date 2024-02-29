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

module CSA_4bit(S, Co, B, Ci, A);
//: interface  /sz:(254, 208) /bd:[ Ti0>A[3:0](72/254) Ti1>B(169/254) Ri0>Ci[1:0](106/208) Lo0<Co(105/208) Bo0<S[3:0](123/254) ]
input [3:0] B;    //: /sn:0 {0}(778,382)(778,321)(596,321)(596,98){1}
//: {2}(598,96)(773,96)(773,135){3}
//: {4}(594,96)(503,96){5}
supply1 w0;    //: /sn:0 /dp:1 {0}(831,438)(894,438)(894,416){1}
input [3:0] A;    //: /sn:0 {0}(694,382)(694,342)(557,342)(557,67){1}
//: {2}(559,65)(688,65)(688,135){3}
//: {4}(555,65)(504,65){5}
supply0 w1;    //: /sn:0 {0}(884,204)(884,187)(827,187){1}
output Co;    //: /sn:0 /dp:1 {0}(435,302)(393,302){1}
input Ci;    //: /sn:0 {0}(377,597)(404,597){1}
//: {2}(406,595)(406,573)(330,573)(330,245)(448,245)(448,279){3}
//: {4}(406,599)(406,650)(697,650){5}
output [3:0] S;    //: /sn:0 {0}(720,709)(720,663){1}
wire [3:0] w6;    //: /sn:0 /dp:1 {0}(710,634)(710,596)(938,596)(938,307)(725,307)(725,276){1}
wire w7;    //: /sn:0 {0}(637,497)(476,497)(476,312)(464,312){1}
wire [3:0] w14;    //: /sn:0 {0}(730,634)(730,534){1}
wire w5;    //: /sn:0 {0}(630,242)(474,242)(474,292)(464,292){1}
//: enddecls

  //: joint g8 (A) @(557, 65) /w:[ 2 -1 4 1 ]
  //: output g4 (S) @(720,706) /sn:0 /R:3 /w:[ 0 ]
  //: output g3 (Co) @(396,302) /sn:0 /R:2 /w:[ 1 ]
  //: supply1 g2 (w0) @(905,416) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(501,96) /sn:0 /w:[ 5 ]
  mux g10 (.I0(w5), .I1(w7), .S(Ci), .Z(Co));   //: @(448,302) /sn:0 /R:3 /w:[ 1 1 3 0 ] /ss:0 /do:0
  CPA g6 (.A(A), .B(B), .Ci(w1), .Co(w5), .S(w6));   //: @(631, 136) /sz:(195, 139) /sn:0 /p:[ Ti0>3 Ti1>3 Ri0>1 Lo0<0 Bo0<1 ]
  //: joint g9 (B) @(596, 96) /w:[ 2 -1 4 1 ]
  CPA g7 (.A(A), .B(B), .Ci(w0), .Co(w7), .S(w14));   //: @(638, 383) /sz:(192, 150) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<0 Bo0<1 ]
  mux g12 (.I0(w6), .I1(w14), .S(Ci), .Z(S));   //: @(720,650) /sn:0 /w:[ 0 0 5 1 ] /ss:0 /do:0
  //: supply0 g5 (w1) @(884,210) /sn:0 /w:[ 0 ]
  //: input g11 (Ci) @(375,597) /sn:0 /w:[ 0 ]
  //: input g0 (A) @(502,65) /sn:0 /w:[ 5 ]
  //: joint g13 (Ci) @(406, 597) /w:[ -1 2 1 4 ]

endmodule

module CPA(B, Ci, Co, S, A);
//: interface  /sz:(190, 97) /bd:[ Ti0>B[3:0](139/190) Ti1>A[3:0](56/190) Ri0>Ci(36/97) Lo0<Co(74/97) Bo0<S[3:0](92/190) ]
input [3:0] B;    //: /sn:0 {0}(147,91)(246,91){1}
//: {2}(247,91)(544,91){3}
//: {4}(545,91)(825,91){5}
//: {6}(826,91)(1100,91){7}
//: {8}(1101,91)(1125,91){9}
input [3:0] A;    //: /sn:0 /dp:9 {0}(1086,156)(1051,156){1}
//: {2}(1050,156)(776,156){3}
//: {4}(775,156)(494,156){5}
//: {6}(493,156)(196,156){7}
//: {8}(195,156)(150,156){9}
output Co;    //: /sn:0 /dp:1 {0}(1128,328)(1228,328){1}
input Ci;    //: /sn:0 {0}(124,340)(166,340){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(1170,494)(1284,494){1}
wire w6;    //: /sn:0 {0}(1051,160)(1051,264)(1050,264)(1050,274){1}
wire w13;    //: /sn:0 {0}(513,382)(513,499)(1164,499){1}
wire w16;    //: /sn:0 {0}(572,334)(746,334){1}
wire w7;    //: /sn:0 {0}(1101,95)(1101,274){1}
wire w4;    //: /sn:0 {0}(196,160)(196,283){1}
wire w0;    //: /sn:0 {0}(494,160)(494,280){1}
wire w3;    //: /sn:0 {0}(826,95)(826,267)(827,267)(827,277){1}
wire w22;    //: /sn:0 {0}(854,331)(1020,331){1}
wire w20;    //: /sn:0 {0}(1164,489)(795,489)(795,379){1}
wire w1;    //: /sn:0 {0}(776,160)(776,277){1}
wire w27;    //: /sn:0 {0}(1164,479)(1069,479)(1069,376){1}
wire w14;    //: /sn:0 {0}(274,337)(464,337){1}
wire w2;    //: /sn:0 {0}(545,95)(545,280){1}
wire w15;    //: /sn:0 {0}(215,385)(215,509)(1164,509){1}
wire w5;    //: /sn:0 {0}(247,95)(247,283){1}
//: enddecls

  //: input g4 (B) @(145,91) /sn:0 /w:[ 0 ]
  //: input g3 (Ci) @(122,340) /sn:0 /w:[ 0 ]
  tran g16(.Z(w4), .I(A[0]));   //: @(196,154) /sn:0 /R:1 /w:[ 0 8 7 ] /ss:1
  tran g17(.Z(w2), .I(B[1]));   //: @(545,89) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  FA g2 (.B(w3), .A(w1), .Ci(w16), .S(w20), .Co(w22));   //: @(747, 278) /sz:(106, 100) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<0 ]
  //: output g23 (Co) @(1225,328) /sn:0 /w:[ 1 ]
  //: output g24 (S) @(1281,494) /sn:0 /w:[ 1 ]
  FA g1 (.B(w2), .A(w0), .Ci(w14), .S(w13), .Co(w16));   //: @(465, 281) /sz:(106, 100) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<0 Ro0<0 ]
  tran g18(.Z(w0), .I(A[1]));   //: @(494,154) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  concat g25 (.I0(w15), .I1(w13), .I2(w20), .I3(w27), .Z(S));   //: @(1169,494) /sn:0 /w:[ 1 1 0 0 0 ] /dr:0
  FA g6 (.B(w7), .A(w6), .Ci(w22), .S(w27), .Co(Co));   //: @(1021, 275) /sz:(106, 100) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<0 ]
  tran g22(.Z(w6), .I(A[3]));   //: @(1051,154) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  //: input g5 (A) @(148,156) /sn:0 /w:[ 9 ]
  tran g19(.Z(w1), .I(A[2]));   //: @(776,154) /sn:0 /R:1 /w:[ 0 4 3 ] /ss:1
  tran g21(.Z(w7), .I(B[3]));   //: @(1101,89) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  tran g20(.Z(w3), .I(B[2]));   //: @(826,89) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  tran g15(.Z(w5), .I(B[0]));   //: @(247,89) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  FA g0 (.B(w5), .A(w4), .Ci(Ci), .S(w15), .Co(w14));   //: @(167, 284) /sz:(106, 100) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<0 Ro0<0 ]

endmodule

module FA(B, A, S, Co, Ci);
//: interface  /sz:(106, 100) /bd:[ Ti0>B(80/106) Ti1>A(29/106) Li0>Ci(56/100) Bo0<S(48/106) Ro0<Co(53/100) ]
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
wire [3:0] w4;    //: /sn:0 /dp:1 {0}(728,127)(728,200)(729,200)(729,230){1}
wire w0;    //: /sn:0 {0}(473,335)(545,335)(545,336)(559,336){1}
wire [3:0] w1;    //: /sn:0 {0}(632,125)(632,230){1}
wire w2;    //: /sn:0 {0}(905,406)(815,406){1}
wire [3:0] S;    //: /sn:0 {0}(683,440)(683,508){1}
//: enddecls

  //: dip g4 (w1) @(632,115) /sn:0 /w:[ 0 ] /st:14
  //: switch g3 (w2) @(923,406) /sn:0 /R:2 /w:[ 0 ] /st:0
  led g1 (.I(w0));   //: @(466,335) /sn:0 /R:1 /w:[ 0 ] /type:3
  led g6 (.I(S));   //: @(683,515) /sn:0 /R:2 /w:[ 1 ] /type:3
  //: dip g5 (w4) @(728,117) /sn:0 /w:[ 0 ] /st:1
  CSA_4bit g0 (.B(w4), .A(w1), .Ci(w2), .Co(w0), .S(S));   //: @(560, 231) /sz:(254, 208) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<0 ]

endmodule

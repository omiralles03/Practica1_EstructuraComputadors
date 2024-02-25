//: version "1.8.7"

module CPA_16(B, A, S, Co, Ci);
//: interface  /sz:(187, 152) /bd:[ Ti0>A[15:0](49/187) Ti1>B[15:0](145/187) Li0>Ci(76/152) Bo0<S[15:0](92/187) Ro0<Co(83/152) ]
input [15:0] B;    //: /sn:0 /dp:1 {0}(124,94)(304,94){1}
//: {2}(305,94)(498,94){3}
//: {4}(499,94)(689,94){5}
//: {6}(690,94)(882,94){7}
//: {8}(883,94)(917,94){9}
input [15:0] A;    //: /sn:0 /dp:1 {0}(128,146)(248,146){1}
//: {2}(249,146)(442,146){3}
//: {4}(443,146)(633,146){5}
//: {6}(634,146)(826,146){7}
//: {8}(827,146)(905,146){9}
output Co;    //: /sn:0 {0}(919,314)(992,314){1}
input Ci;    //: /sn:0 {0}(169,316)(211,316){1}
output [15:0] S;    //: /sn:0 /dp:1 {0}(925,445)(996,445){1}
wire [3:0] w6;    //: /sn:0 {0}(919,440)(658,440)(658,359){1}
wire w16;    //: /sn:0 {0}(726,315)(789,315){1}
wire [3:0] w13;    //: /sn:0 {0}(634,268)(634,150){1}
wire w3;    //: /sn:0 {0}(341,316)(405,316){1}
wire [3:0] w0;    //: /sn:0 {0}(305,269)(305,98){1}
wire [3:0] w19;    //: /sn:0 {0}(851,359)(851,430)(919,430){1}
wire w12;    //: /sn:0 {0}(535,315)(596,315){1}
wire [3:0] w10;    //: /sn:0 {0}(690,268)(690,98){1}
wire [3:0] w1;    //: /sn:0 {0}(249,269)(249,150){1}
wire [3:0] w8;    //: /sn:0 {0}(499,269)(499,98){1}
wire [3:0] w17;    //: /sn:0 {0}(827,268)(827,150){1}
wire [3:0] w14;    //: /sn:0 {0}(883,268)(883,98){1}
wire [3:0] w2;    //: /sn:0 /dp:1 {0}(919,460)(273,460)(273,360){1}
wire [3:0] w11;    //: /sn:0 {0}(467,360)(467,450)(919,450){1}
wire [3:0] w9;    //: /sn:0 {0}(443,269)(443,150){1}
//: enddecls

  CPA g8 (.A(w13), .B(w10), .Ci(w12), .S(w6), .Co(w16));   //: @(597, 269) /sz:(128, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  //: input g4 (B) @(122,94) /sn:0 /w:[ 0 ]
  tran g16(.Z(w13), .I(A[11:8]));   //: @(634,144) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  //: input g3 (A) @(126,146) /sn:0 /w:[ 0 ]
  tran g17(.Z(w17), .I(A[15:12]));   //: @(827,144) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  //: output g2 (S) @(993,445) /sn:0 /w:[ 1 ]
  //: output g1 (Co) @(989,314) /sn:0 /w:[ 1 ]
  tran g10(.Z(w1), .I(A[3:0]));   //: @(249,144) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  concat g6 (.I0(w2), .I1(w11), .I2(w6), .I3(w19), .Z(S));   //: @(924,445) /sn:0 /w:[ 0 1 0 1 0 ] /dr:0
  CPA g9 (.A(w17), .B(w14), .Ci(w16), .S(w19), .Co(Co));   //: @(790, 269) /sz:(128, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<0 Ro0<0 ]
  CPA g7 (.A(w9), .B(w8), .Ci(w3), .S(w11), .Co(w12));   //: @(406, 270) /sz:(128, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<0 Ro0<0 ]
  tran g12(.Z(w9), .I(A[7:4]));   //: @(443,144) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  tran g14(.Z(w10), .I(B[11:8]));   //: @(690,92) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  tran g11(.Z(w0), .I(B[3:0]));   //: @(305,92) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  //: input g5 (Ci) @(167,316) /sn:0 /w:[ 0 ]
  tran g15(.Z(w14), .I(B[15:12]));   //: @(883,92) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  CPA g0 (.A(w1), .B(w0), .Ci(Ci), .S(w2), .Co(w3));   //: @(212, 270) /sz:(128, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  tran g13(.Z(w8), .I(B[7:4]));   //: @(499,92) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1

endmodule

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

module CPA(B, Ci, Co, S, A);
//: interface  /sz:(128, 89) /bd:[ Ti0>B[3:0](93/128) Ti1>A[3:0](37/128) Li0>Ci(46/89) Bo0<S[3:0](61/128) Ro0<Co(45/89) ]
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
wire [15:0] w6;    //: /sn:0 /dp:1 {0}(631,168)(631,268){1}
wire [15:0] w3;    //: /sn:0 {0}(578,466)(578,422){1}
wire w1;    //: /sn:0 {0}(674,352)(728,352){1}
wire w2;    //: /sn:0 {0}(426,345)(485,345){1}
wire [15:0] w5;    //: /sn:0 {0}(535,168)(535,268){1}
//: enddecls

  led g4 (.I(w3));   //: @(578,473) /sn:0 /R:2 /w:[ 0 ] /type:3
  led g3 (.I(w1));   //: @(735,352) /sn:0 /R:3 /w:[ 1 ] /type:3
  //: dip g2 (w6) @(631,158) /sn:0 /w:[ 0 ] /st:1
  //: dip g1 (w5) @(535,158) /sn:0 /w:[ 0 ] /st:65534
  //: switch g5 (w2) @(409,345) /sn:0 /w:[ 0 ] /st:0
  CPA_16 g0 (.B(w6), .A(w5), .Ci(w2), .S(w3), .Co(w1));   //: @(486, 269) /sz:(187, 152) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<0 ]

endmodule

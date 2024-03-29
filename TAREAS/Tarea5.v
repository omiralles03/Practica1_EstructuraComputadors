//: version "1.8.7"

module CPA(B, Ci, Co, S, A);
//: interface  /sz:(190, 97) /bd:[ Ti0>B[3:0](139/190) Ti1>A[3:0](56/190) Ri0>Ci(36/97) Lo0<Co(74/97) Bo0<S[3:0](92/190) ]
input [3:0] B;    //: /sn:0 {0}(147,91)(246,91){1}
//: {2}(247,91)(544,91){3}
//: {4}(545,91)(825,91){5}
//: {6}(826,91)(1100,91){7}
//: {8}(1101,91)(1125,91){9}
input [3:0] A;    //: /sn:0 /dp:9 {0}(1085,156)(1050,156){1}
//: {2}(1049,156)(775,156){3}
//: {4}(774,156)(494,156){5}
//: {6}(493,156)(196,156){7}
//: {8}(195,156)(150,156){9}
output Co;    //: /sn:0 /dp:1 {0}(1125,333)(1175,333){1}
input Ci;    //: /sn:0 {0}(130,333)(171,333){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(1170,494)(1284,494){1}
wire w16;    //: /sn:0 {0}(850,333)(1025,333){1}
wire w13;    //: /sn:0 /dp:1 {0}(750,333)(569,333){1}
wire w6;    //: /sn:0 {0}(1050,160)(1050,301){1}
wire w7;    //: /sn:0 {0}(1101,95)(1101,301){1}
wire w4;    //: /sn:0 {0}(196,160)(196,301){1}
wire w0;    //: /sn:0 {0}(494,160)(494,301){1}
wire w20;    //: /sn:0 {0}(1164,489)(796,489)(796,385){1}
wire w12;    //: /sn:0 /dp:1 {0}(826,301)(826,95){1}
wire w10;    //: /sn:0 {0}(217,385)(217,509)(1164,509){1}
wire w8;    //: /sn:0 /dp:1 {0}(775,301)(775,160){1}
wire w17;    //: /sn:0 {0}(1071,385)(1071,479)(1164,479){1}
wire w11;    //: /sn:0 {0}(271,333)(469,333){1}
wire w2;    //: /sn:0 {0}(545,95)(545,301){1}
wire w5;    //: /sn:0 {0}(247,95)(247,301){1}
wire w9;    //: /sn:0 /dp:1 {0}(1164,499)(515,499)(515,385){1}
//: enddecls

  //: input g4 (B) @(145,91) /sn:0 /w:[ 0 ]
  //: input g3 (Ci) @(128,333) /sn:0 /w:[ 0 ]
  tran g16(.Z(w4), .I(A[0]));   //: @(196,154) /sn:0 /R:1 /w:[ 0 8 7 ] /ss:1
  tran g17(.Z(w2), .I(B[1]));   //: @(545,89) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  FA g2 (.B(w12), .A(w8), .Ci(w13), .S(w20), .Co(w16));   //: @(751, 302) /sz:(98, 82) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>0 Bo0<1 Ro0<0 ]
  //: output g23 (Co) @(1172,333) /sn:0 /w:[ 1 ]
  FA g1 (.B(w2), .A(w0), .Ci(w11), .S(w9), .Co(w13));   //: @(470, 302) /sz:(98, 82) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<1 ]
  //: output g24 (S) @(1281,494) /sn:0 /w:[ 1 ]
  tran g18(.Z(w0), .I(A[1]));   //: @(494,154) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  concat g25 (.I0(w10), .I1(w9), .I2(w20), .I3(w17), .Z(S));   //: @(1169,494) /sn:0 /w:[ 1 0 0 1 0 ] /dr:0
  FA g6 (.B(w7), .A(w6), .Ci(w16), .S(w17), .Co(Co));   //: @(1026, 302) /sz:(98, 82) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<0 Ro0<0 ]
  tran g22(.Z(w6), .I(A[3]));   //: @(1050,154) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  //: input g5 (A) @(148,156) /sn:0 /w:[ 9 ]
  tran g19(.Z(w8), .I(A[2]));   //: @(775,154) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  tran g21(.Z(w7), .I(B[3]));   //: @(1101,89) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  tran g20(.Z(w12), .I(B[2]));   //: @(826,89) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  FA g0 (.B(w5), .A(w4), .Ci(Ci), .S(w10), .Co(w11));   //: @(172, 302) /sz:(98, 82) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<0 Ro0<0 ]
  tran g15(.Z(w5), .I(B[0]));   //: @(247,89) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1

endmodule

module FA(Co, S, Ci, B, A);
//: interface  /sz:(98, 82) /bd:[ Ti0>A(24/98) Ti1>B(75/98) Li0>Ci(31/82) Bo0<S(45/98) Ro0<Co(31/82) ]
input B;    //: /sn:0 {0}(170,286)(197,286)(197,258)(221,258){1}
//: {2}(225,258)(275,258){3}
//: {4}(223,260)(223,363)(380,363){5}
input A;    //: /sn:0 {0}(170,253)(234,253){1}
//: {2}(238,253)(275,253){3}
//: {4}(236,255)(236,368)(380,368){5}
output Co;    //: /sn:0 /dp:1 {0}(486,346)(567,346){1}
input Ci;    //: /sn:0 {0}(169,325)(298,325)(298,302)(339,302){1}
//: {2}(341,300)(341,276)(373,276){3}
//: {4}(341,304)(341,325)(377,325){5}
output S;    //: /sn:0 /dp:1 {0}(394,274)(511,274){1}
wire w14;    //: /sn:0 {0}(401,366)(455,366)(455,348)(465,348){1}
wire w11;    //: /sn:0 {0}(398,328)(456,328)(456,343)(465,343){1}
wire w2;    //: /sn:0 {0}(296,256)(312,256){1}
//: {2}(316,256)(341,256)(341,271)(373,271){3}
//: {4}(314,258)(314,330)(377,330){5}
//: enddecls

  and g8 (.I0(Ci), .I1(w2), .Z(w11));   //: @(388,328) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: output g4 (Co) @(564,346) /sn:0 /w:[ 1 ]
  //: output g3 (S) @(508,274) /sn:0 /w:[ 1 ]
  //: input g2 (Ci) @(167,325) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(168,286) /sn:0 /w:[ 0 ]
  //: joint g10 (Ci) @(341, 302) /w:[ -1 2 1 4 ]
  xor g6 (.I0(w2), .I1(Ci), .Z(S));   //: @(384,274) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  and g9 (.I0(B), .I1(A), .Z(w14));   //: @(391,366) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  or g7 (.I0(w11), .I1(w14), .Z(Co));   //: @(476,346) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  //: joint g12 (B) @(223, 258) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(A), .I1(B), .Z(w2));   //: @(286,256) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  //: joint g11 (A) @(236, 253) /w:[ 2 -1 1 4 ]
  //: input g0 (A) @(168,253) /sn:0 /w:[ 0 ]
  //: joint g13 (w2) @(314, 256) /w:[ 2 -1 1 4 ]

endmodule

module main;    //: root_module
wire [3:0] w4;    //: /sn:0 {0}(742,358)(742,320){1}
wire [3:0] w3;    //: /sn:0 /dp:1 {0}(789,144)(789,221){1}
wire w0;    //: /sn:0 {0}(612,296)(649,296){1}
wire [3:0] w2;    //: /sn:0 {0}(706,144)(706,221){1}
wire w5;    //: /sn:0 /dp:1 {0}(841,258)(879,258){1}
//: enddecls

  CPA g8 (.B(w3), .A(w2), .Ci(w5), .Co(w0), .S(w4));   //: @(650, 222) /sz:(190, 97) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>0 Lo0<1 Bo0<1 ]
  led g4 (.I(w4));   //: @(742,365) /sn:0 /R:2 /w:[ 0 ] /type:3
  //: dip g3 (w3) @(789,134) /sn:0 /w:[ 0 ] /st:4
  //: dip g2 (w2) @(706,134) /sn:0 /w:[ 0 ] /st:3
  //: switch g5 (w5) @(897,258) /sn:0 /R:2 /w:[ 1 ] /st:0
  led g0 (.I(w0));   //: @(605,296) /sn:0 /R:1 /w:[ 0 ] /type:3

endmodule

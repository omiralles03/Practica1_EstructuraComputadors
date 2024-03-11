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

module Ca2(In, Out);
//: interface  /sz:(83, 89) /bd:[ Ti0>In[15:0](35/83) Bo0<Out[15:0](35/83) ]
input [15:0] In;    //: /sn:0 /dp:1 {0}(417,295)(527,295)(527,252){1}
//: {2}(529,250)(572,250){3}
//: {4}(527,248)(527,180){5}
//: {6}(527,176)(527,136){7}
//: {8}(525,178)(515,178)(515,181)(343,181){9}
output [15:0] Out;    //: /sn:0 {0}(724,500)(724,529){1}
//: {2}(726,531)(909,531)(909,495){3}
//: {4}(722,531)(578,531){5}
//: {6}(724,533)(724,569)(764,569){7}
wire [15:0] w4;    //: /sn:0 /dp:4 {0}(588,250)(665,250){1}
//: {2}(667,248)(667,132){3}
//: {4}(669,130)(768,130)(768,126)(954,126){5}
//: {6}(667,128)(667,84){7}
//: {8}(667,252)(667,277)(681,277)(681,346){9}
wire w0;    //: /sn:0 /dp:1 {0}(377,406)(377,416)(392,416)(392,423)(631,423){1}
wire w2;    //: /sn:0 /dp:1 {0}(946,411)(946,430)(820,430){1}
wire [15:0] w5;    //: /sn:0 {0}(777,198)(777,346){1}
//: enddecls

  not g4 (.I(In), .Z(w4));   //: @(578,250) /sn:0 /w:[ 3 0 ]
  led g8 (.I(Out));   //: @(571,531) /sn:0 /R:1 /w:[ 5 ] /type:3
  //: joint g16 (In) @(527, 178) /w:[ -1 6 8 5 ]
  //: dip g3 (w5) @(777,188) /sn:0 /w:[ 0 ] /st:1
  led g17 (.I(Out));   //: @(909,488) /sn:0 /w:[ 3 ] /type:1
  CPA_16 g2 (.A(w4), .B(w5), .Ci(w0), .S(Out), .Co(w2));   //: @(632, 347) /sz:(187, 152) /sn:0 /p:[ Ti0>9 Ti1>1 Li0>1 Bo0<0 Ro0<1 ]
  //: input g1 (In) @(415,295) /sn:0 /w:[ 0 ]
  led g10 (.I(w4));   //: @(961,126) /sn:0 /R:3 /w:[ 5 ] /type:1
  led g6 (.I(w2));   //: @(946,404) /sn:0 /w:[ 0 ] /type:3
  led g9 (.I(w4));   //: @(667,77) /sn:0 /w:[ 7 ] /type:3
  led g7 (.I(In));   //: @(527,129) /sn:0 /w:[ 7 ] /type:3
  //: joint g12 (Out) @(724, 531) /w:[ 2 1 4 6 ]
  //: joint g14 (w4) @(667, 250) /w:[ -1 2 1 8 ]
  //: joint g11 (w4) @(667, 130) /w:[ 4 6 -1 3 ]
  //: dip g5 (w0) @(377,396) /sn:0 /w:[ 0 ] /st:0
  led g15 (.I(In));   //: @(336,181) /sn:0 /R:1 /w:[ 9 ] /type:1
  //: output g0 (Out) @(761,569) /sn:0 /w:[ 7 ]
  //: joint g13 (In) @(527, 250) /w:[ 2 4 -1 1 ]

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
output Co;    //: /sn:0 /dp:1 {0}(1118,340)(1231,340){1}
input Ci;    //: /sn:0 {0}(124,340)(170,340){1}
output [3:0] S;    //: /sn:0 /dp:1 {0}(1170,494)(1284,494){1}
wire w6;    //: /sn:0 {0}(1051,160)(1051,309){1}
wire w16;    //: /sn:0 {0}(776,309)(776,160){1}
wire w7;    //: /sn:0 {0}(1101,95)(1101,309){1}
wire w25;    //: /sn:0 {0}(1071,391)(1071,479)(1164,479){1}
wire w0;    //: /sn:0 {0}(494,160)(494,309){1}
wire w20;    //: /sn:0 {0}(1164,489)(796,489)(796,391){1}
wire w12;    //: /sn:0 {0}(216,391)(216,509)(1164,509){1}
wire w10;    //: /sn:0 /dp:1 {0}(468,340)(263,340){1}
wire w21;    //: /sn:0 {0}(843,340)(1025,340){1}
wire w8;    //: /sn:0 {0}(196,309)(196,160){1}
wire w17;    //: /sn:0 {0}(826,309)(826,95){1}
wire w14;    //: /sn:0 {0}(561,340)(750,340){1}
wire w15;    //: /sn:0 /dp:1 {0}(1164,499)(514,499)(514,391){1}
wire w5;    //: /sn:0 {0}(545,309)(545,95){1}
wire w9;    //: /sn:0 {0}(247,309)(247,95){1}
//: enddecls

  //: input g4 (B) @(145,91) /sn:0 /w:[ 0 ]
  //: input g3 (Ci) @(122,340) /sn:0 /w:[ 0 ]
  tran g16(.Z(w8), .I(A[0]));   //: @(196,154) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  tran g17(.Z(w5), .I(B[1]));   //: @(545,89) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1
  FA g2 (.B(w17), .A(w16), .Ci(w14), .S(w20), .Co(w21));   //: @(751, 310) /sz:(91, 80) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  //: output g23 (Co) @(1228,340) /sn:0 /w:[ 1 ]
  //: output g24 (S) @(1281,494) /sn:0 /w:[ 1 ]
  FA g1 (.B(w5), .A(w0), .Ci(w10), .S(w15), .Co(w14));   //: @(469, 310) /sz:(91, 80) /sn:0 /p:[ Ti0>0 Ti1>1 Li0>0 Bo0<1 Ro0<0 ]
  tran g18(.Z(w0), .I(A[1]));   //: @(494,154) /sn:0 /R:1 /w:[ 0 6 5 ] /ss:1
  concat g25 (.I0(w12), .I1(w15), .I2(w20), .I3(w25), .Z(S));   //: @(1169,494) /sn:0 /w:[ 1 0 0 1 0 ] /dr:0
  FA g6 (.B(w7), .A(w6), .Ci(w21), .S(w25), .Co(Co));   //: @(1026, 310) /sz:(91, 80) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<0 Ro0<0 ]
  tran g22(.Z(w6), .I(A[3]));   //: @(1051,154) /sn:0 /R:1 /w:[ 0 2 1 ] /ss:1
  //: input g5 (A) @(148,156) /sn:0 /w:[ 9 ]
  tran g19(.Z(w16), .I(A[2]));   //: @(776,154) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  tran g21(.Z(w7), .I(B[3]));   //: @(1101,89) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  tran g20(.Z(w17), .I(B[2]));   //: @(826,89) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  tran g15(.Z(w9), .I(B[0]));   //: @(247,89) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  FA g0 (.B(w9), .A(w8), .Ci(Ci), .S(w12), .Co(w10));   //: @(171, 310) /sz:(91, 80) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<0 Ro0<1 ]

endmodule

module main;    //: root_module
wire [15:0] w6;    //: /sn:0 {0}(711,354)(711,405){1}
wire [15:0] w7;    //: /sn:0 /dp:1 {0}(711,241)(711,285){1}
wire w0;    //: /sn:0 {0}(490,482)(565,482){1}
wire [15:0] w1;    //: /sn:0 {0}(658,611)(658,559){1}
wire w2;    //: /sn:0 /dp:1 {0}(820,489)(754,489){1}
wire [15:0] w5;    //: /sn:0 {0}(615,309)(615,405){1}
//: enddecls

  //: switch g4 (w0) @(473,482) /sn:0 /w:[ 0 ] /st:0
  Ca2 g3 (.In(w7), .Out(w6));   //: @(676, 286) /sz:(85, 67) /sn:0 /p:[ Ti0>1 Bo0<0 ]
  //: dip g2 (w7) @(711,231) /sn:0 /w:[ 0 ] /st:5
  //: dip g1 (w5) @(615,299) /sn:0 /w:[ 0 ] /st:12
  led g6 (.I(w2));   //: @(827,489) /sn:0 /R:3 /w:[ 0 ] /type:3
  led g5 (.I(w1));   //: @(658,618) /sn:0 /R:2 /w:[ 0 ] /type:3
  CPA_16 g0 (.A(w5), .B(w6), .Ci(w0), .S(w1), .Co(w2));   //: @(566, 406) /sz:(187, 152) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<1 ]

endmodule

module FA(Co, S, Ci, B, A);
//: interface  /sz:(91, 80) /bd:[ Ti0>B(76/91) Ti1>A(25/91) Li0>Ci(30/80) Bo0<S(45/91) Ro0<Co(30/80) ]
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
wire w2;    //: /sn:0 {0}(296,256)(312,256){1}
//: {2}(316,256)(341,256)(341,271)(373,271){3}
//: {4}(314,258)(314,330)(377,330){5}
wire w11;    //: /sn:0 {0}(398,328)(456,328)(456,343)(465,343){1}
//: enddecls

  //: output g4 (Co) @(564,346) /sn:0 /w:[ 1 ]
  and g8 (.I0(Ci), .I1(w2), .Z(w11));   //: @(388,328) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: output g3 (S) @(508,274) /sn:0 /w:[ 1 ]
  //: input g2 (Ci) @(167,325) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(168,286) /sn:0 /w:[ 0 ]
  //: joint g10 (Ci) @(341, 302) /w:[ -1 2 1 4 ]
  xor g6 (.I0(w2), .I1(Ci), .Z(S));   //: @(384,274) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  or g7 (.I0(w11), .I1(w14), .Z(Co));   //: @(476,346) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  and g9 (.I0(B), .I1(A), .Z(w14));   //: @(391,366) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: joint g12 (B) @(223, 258) /w:[ 2 -1 1 4 ]
  //: comment g14 /dolink:0 /link:"" @(261,210) /sn:0
  //: /line:"NEGAR A-AND, S(XOR1) - AND"
  //: /end
  //: joint g11 (A) @(236, 253) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(A), .I1(B), .Z(w2));   //: @(286,256) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  //: input g0 (A) @(168,253) /sn:0 /w:[ 0 ]
  //: joint g13 (w2) @(314, 256) /w:[ 2 -1 1 4 ]

endmodule

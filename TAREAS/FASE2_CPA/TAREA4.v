//: version "1.8.7"

module HA(C, S, B, A);
//: interface  /sz:(97, 93) /bd:[ Li0>A(25/93) Li1>B(65/93) Ro0<S(25/93) Ro1<C(66/93) ]
input B;    //: /sn:0 {0}(229,171)(256,171){1}
//: {2}(260,171)(287,171){3}
//: {4}(258,173)(258,197)(287,197){5}
input A;    //: /sn:0 {0}(228,146)(243,146)(243,166)(272,166){1}
//: {2}(276,166)(287,166){3}
//: {4}(274,168)(274,192)(287,192){5}
output C;    //: /sn:0 /dp:1 {0}(308,195)(341,195){1}
output S;    //: /sn:0 /dp:1 {0}(308,169)(340,169){1}
//: enddecls

  xor g4 (.I0(A), .I1(B), .Z(S));   //: @(298,169) /sn:0 /delay:" 4" /w:[ 3 3 0 ]
  //: output g3 (C) @(338,195) /sn:0 /w:[ 1 ]
  //: output g2 (S) @(337,169) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(227,171) /sn:0 /w:[ 0 ]
  //: joint g6 (A) @(274, 166) /w:[ 2 -1 1 4 ]
  //: joint g7 (B) @(258, 171) /w:[ 2 -1 1 4 ]
  and g5 (.I0(A), .I1(B), .Z(C));   //: @(298,195) /sn:0 /delay:" 3" /w:[ 5 5 0 ]
  //: input g0 (A) @(226,146) /sn:0 /w:[ 0 ]

endmodule

module main;    //: root_module
wire [3:0] w6;    //: /sn:0 {0}(681,207)(665,207)(665,241){1}
wire w3;    //: /sn:0 {0}(560,281)(594,281){1}
wire w1;    //: /sn:0 {0}(693,283)(722,283){1}
wire [3:0] w2;    //: /sn:0 {0}(644,353)(644,326){1}
wire [3:0] w5;    //: /sn:0 {0}(608,207)(624,207)(624,241){1}
//: enddecls

  //: switch g4 (w3) @(543,281) /sn:0 /w:[ 0 ] /st:0
  led g3 (.I(w2));   //: @(644,360) /sn:0 /R:2 /w:[ 0 ] /type:2
  //: dip g2 (w6) @(719,207) /sn:0 /R:3 /w:[ 0 ] /st:5
  //: dip g1 (w5) @(570,207) /sn:0 /R:1 /w:[ 0 ] /st:10
  led g5 (.I(w1));   //: @(729,283) /sn:0 /R:3 /w:[ 1 ] /type:2
  CPA_4b g0 (.B(w6), .A(w5), .Cin(w3), .S(w2), .Cout(w1));   //: @(595, 242) /sz:(97, 83) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Bo0<1 Ro0<0 ]

endmodule

module FA(Cout, S, Cin, B, A);
//: interface  /sz:(100, 89) /bd:[ Ti0>A(27/100) Ti1>B(70/100) Li0>Cin(42/89) Bo0<S(47/100) Ro0<Cout(43/89) ]
input B;    //: /sn:0 {0}(413,322)(511,322){1}
input A;    //: /sn:0 {0}(409,282)(511,282){1}
input Cin;    //: /sn:0 {0}(407,238)(670,238){1}
output Cout;    //: /sn:0 {0}(871,287)(826,287){1}
output S;    //: /sn:0 /dp:1 {0}(769,243)(873,243){1}
wire w0;    //: /sn:0 /dp:1 {0}(805,284)(769,284){1}
wire w3;    //: /sn:0 {0}(610,323)(796,323)(796,289)(805,289){1}
wire w2;    //: /sn:0 {0}(610,282)(670,282){1}
//: enddecls

  //: output g4 (Cout) @(868,287) /sn:0 /w:[ 0 ]
  //: output g3 (S) @(870,243) /sn:0 /w:[ 1 ]
  //: input g2 (Cin) @(405,238) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(411,322) /sn:0 /w:[ 0 ]
  HA g6 (.B(Cin), .A(w2), .C(w0), .S(S));   //: @(671, 218) /sz:(97, 93) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 Ro1<0 ]
  or g7 (.I0(w0), .I1(w3), .Z(Cout));   //: @(816,287) /sn:0 /delay:" 3" /w:[ 0 1 1 ]
  HA g5 (.B(B), .A(A), .C(w3), .S(w2));   //: @(512, 257) /sz:(97, 93) /sn:0 /p:[ Li0>1 Li1>1 Ro0<0 Ro1<0 ]
  //: input g0 (A) @(407,282) /sn:0 /w:[ 0 ]

endmodule

module CPA_4b(S, Cin, Cout, B, A);
//: interface  /sz:(97, 83) /bd:[ Ti0>B[3:0](70/97) Ti1>A[3:0](29/97) Li0>Cin(39/83) Bo0<S[3:0](49/97) Ro0<Cout(41/83) ]
input [3:0] B;    //: /sn:0 {0}(298,170)(413,170){1}
//: {2}(414,170)(550,170){3}
//: {4}(551,170)(679,170){5}
//: {6}(680,170)(816,170){7}
//: {8}(817,170)(900,170){9}
input [3:0] A;    //: /sn:0 {0}(896,147)(774,147){1}
//: {2}(773,147)(637,147){3}
//: {4}(636,147)(508,147){5}
//: {6}(507,147)(371,147){7}
//: {8}(370,147)(299,147){9}
input Cin;    //: /sn:0 {0}(295,231)(343,231){1}
output Cout;    //: /sn:0 /dp:1 {0}(848,235)(911,235){1}
output [3:0] S;    //: /sn:0 {0}(877,326)(922,326){1}
wire w6;    //: /sn:0 {0}(680,190)(680,174){1}
wire w13;    //: /sn:0 {0}(817,191)(817,174){1}
wire w16;    //: /sn:0 /dp:1 {0}(794,282)(794,311)(871,311){1}
wire w7;    //: /sn:0 {0}(528,280)(528,331)(871,331){1}
wire w4;    //: /sn:0 {0}(445,232)(480,232){1}
wire w0;    //: /sn:0 {0}(414,188)(414,174){1}
wire w3;    //: /sn:0 {0}(551,189)(551,174){1}
wire w12;    //: /sn:0 {0}(711,234)(746,234){1}
wire w10;    //: /sn:0 {0}(871,341)(391,341)(391,279){1}
wire w1;    //: /sn:0 {0}(371,188)(371,151){1}
wire w8;    //: /sn:0 {0}(582,233)(609,233){1}
wire w17;    //: /sn:0 {0}(871,321)(657,321)(657,281){1}
wire w14;    //: /sn:0 {0}(774,191)(774,151){1}
wire w5;    //: /sn:0 {0}(508,189)(508,151){1}
wire w9;    //: /sn:0 {0}(637,190)(637,151){1}
//: enddecls

  FA g4 (.A(w1), .B(w0), .Cin(Cin), .S(w10), .Cout(w4));   //: @(344, 189) /sz:(100, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  //: output g8 (S) @(919,326) /sn:0 /w:[ 1 ]
  //: input g3 (Cin) @(293,231) /sn:0 /w:[ 0 ]
  tran g16(.Z(w14), .I(A[3]));   //: @(774,145) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  tran g17(.Z(w13), .I(B[3]));   //: @(817,168) /sn:0 /R:1 /w:[ 1 7 8 ] /ss:1
  //: output g2 (Cout) @(908,235) /sn:0 /w:[ 1 ]
  //: input g1 (B) @(296,170) /sn:0 /w:[ 0 ]
  tran g10(.Z(w1), .I(A[0]));   //: @(371,145) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  FA g6 (.A(w9), .B(w6), .Cin(w8), .S(w17), .Cout(w12));   //: @(610, 191) /sz:(100, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<1 Ro0<0 ]
  FA g7 (.A(w14), .B(w13), .Cin(w12), .S(w16), .Cout(Cout));   //: @(747, 192) /sz:(100, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<0 Ro0<0 ]
  concat g9 (.I0(w10), .I1(w7), .I2(w17), .I3(w16), .Z(S));   //: @(876,326) /sn:0 /w:[ 0 1 0 1 0 ] /dr:0
  tran g12(.Z(w5), .I(A[1]));   //: @(508,145) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  FA g5 (.A(w5), .B(w3), .Cin(w4), .S(w7), .Cout(w8));   //: @(481, 190) /sz:(100, 89) /sn:0 /p:[ Ti0>0 Ti1>0 Li0>1 Bo0<0 Ro0<0 ]
  tran g11(.Z(w0), .I(B[0]));   //: @(414,168) /sn:0 /R:1 /w:[ 1 1 2 ] /ss:1
  tran g14(.Z(w9), .I(A[2]));   //: @(637,145) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  //: input g0 (A) @(297,147) /sn:0 /w:[ 9 ]
  tran g15(.Z(w6), .I(B[2]));   //: @(680,168) /sn:0 /R:1 /w:[ 1 5 6 ] /ss:1
  tran g13(.Z(w3), .I(B[1]));   //: @(551,168) /sn:0 /R:1 /w:[ 1 3 4 ] /ss:1

endmodule

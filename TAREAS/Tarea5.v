//: version "1.8.7"

module main;    //: root_module
wire w6;    //: /sn:0 {0}(869,287)(869,310)(872,310)(872,334){1}
wire w13;    //: /sn:0 {0}(594,382)(475,382)(475,375)(465,375){1}
wire w16;    //: /sn:0 {0}(383,287)(383,335){1}
wire [3:0] w7;    //: /sn:0 {0}(301,139)(301,283)(382,283){1}
//: {2}(383,283)(629,283){3}
//: {4}(630,283)(868,283){5}
//: {6}(869,283)(1122,283){7}
//: {8}(1123,283)(1195,283){9}
wire w25;    //: /sn:0 {0}(1250,600)(396,600)(396,438){1}
wire w4;    //: /sn:0 {0}(1088,378)(964,378)(964,374)(954,374){1}
wire w0;    //: /sn:0 {0}(282,380)(348,380){1}
wire w22;    //: /sn:0 {0}(1250,620)(885,620)(885,437){1}
wire w3;    //: /sn:0 {0}(1136,436)(1136,630)(1250,630){1}
wire w20;    //: /sn:0 {0}(1278,209)(1288,209)(1288,373)(1205,373){1}
wire [3:0] w23;    //: /sn:0 /dp:1 {0}(1256,615)(1410,615){1}
//: {2}(1414,615)(1507,615)(1507,512){3}
//: {4}(1412,613)(1412,599)(1409,599)(1409,525){5}
wire w10;    //: /sn:0 {0}(671,223)(671,231)(673,231)(673,337){1}
wire w24;    //: /sn:0 {0}(1250,610)(642,610)(642,440){1}
wire w1;    //: /sn:0 {0}(1166,223)(1166,231)(1167,231)(1167,333){1}
wire w8;    //: /sn:0 {0}(837,379)(721,379)(721,377)(711,377){1}
wire [3:0] w14;    //: /sn:0 {0}(408,141)(408,219)(479,219){1}
//: {2}(480,219)(670,219){3}
//: {4}(671,219)(914,219){5}
//: {6}(915,219)(1165,219){7}
//: {8}(1166,219)(1198,219){9}
wire w2;    //: /sn:0 {0}(1123,287)(1123,333){1}
wire w11;    //: /sn:0 {0}(630,287)(630,295)(629,295)(629,337){1}
wire w15;    //: /sn:0 {0}(480,223)(480,309)(427,309)(427,335){1}
wire w5;    //: /sn:0 {0}(915,223)(915,231)(916,231)(916,334){1}
//: enddecls

  //: dip g8 (w14) @(408,131) /sn:0 /w:[ 0 ] /st:4
  //: switch g4 (w20) @(1261,209) /sn:0 /w:[ 0 ] /st:0
  tran g16(.Z(w2), .I(w7[0]));   //: @(1123,281) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  FA g3 (.A(w16), .B(w15), .Ci(w13), .Co(w0), .S(w25));   //: @(349, 336) /sz:(115, 101) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]
  led g17 (.I(w23));   //: @(1409,518) /sn:0 /w:[ 5 ] /type:3
  FA g2 (.A(w11), .B(w10), .Ci(w8), .Co(w13), .S(w24));   //: @(595, 338) /sz:(115, 101) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<1 ]
  FA g1 (.A(w6), .B(w5), .Ci(w4), .Co(w8), .S(w22));   //: @(838, 335) /sz:(115, 101) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<1 ]
  led g18 (.I(w23));   //: @(1507,505) /sn:0 /w:[ 3 ] /type:1
  tran g10(.Z(w10), .I(w14[2]));   //: @(671,217) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  led g6 (.I(w0));   //: @(275,380) /sn:0 /R:1 /w:[ 0 ] /type:0
  //: dip g7 (w7) @(301,129) /sn:0 /w:[ 0 ] /st:5
  tran g9(.Z(w1), .I(w14[0]));   //: @(1166,217) /sn:0 /R:1 /w:[ 0 7 8 ] /ss:1
  tran g12(.Z(w15), .I(w14[3]));   //: @(480,217) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1
  tran g14(.Z(w11), .I(w7[2]));   //: @(630,281) /sn:0 /R:1 /w:[ 0 3 4 ] /ss:1
  tran g11(.Z(w5), .I(w14[1]));   //: @(915,217) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  concat g5 (.I0(w3), .I1(w22), .I2(w24), .I3(w25), .Z(w23));   //: @(1255,615) /sn:0 /w:[ 1 0 0 0 0 ] /dr:0
  //: joint g19 (w23) @(1412, 615) /w:[ 2 4 1 -1 ]
  tran g15(.Z(w6), .I(w7[1]));   //: @(869,281) /sn:0 /R:1 /w:[ 0 5 6 ] /ss:1
  FA g0 (.A(w2), .B(w1), .Ci(w20), .Co(w4), .S(w3));   //: @(1089, 334) /sz:(115, 101) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<0 Bo0<0 ]
  tran g13(.Z(w16), .I(w7[3]));   //: @(383,281) /sn:0 /R:1 /w:[ 0 1 2 ] /ss:1

endmodule

module FA(Co, S, Ci, B, A);
//: interface  /sz:(115, 101) /bd:[ Ti0>B(78/115) Ti1>A(34/115) Ri0>Ci(39/101) Lo0<Co(44/101) Bo0<S(47/115) ]
input B;    //: /sn:0 {0}(386,265)(414,265)(414,246)(447,246){1}
//: {2}(451,246)(474,246){3}
//: {4}(449,248)(449,320)(580,320){5}
input A;    //: /sn:0 {0}(388,240)(427,240){1}
//: {2}(431,240)(466,240)(466,241)(474,241){3}
//: {4}(429,242)(429,325)(580,325){5}
output Co;    //: /sn:0 /dp:1 {0}(678,315)(783,315)(783,298)(792,298){1}
input Ci;    //: /sn:0 {0}(388,283)(534,283)(534,278)(544,278){1}
//: {2}(546,276)(546,258)(586,258){3}
//: {4}(546,280)(546,294)(574,294){5}
output S;    //: /sn:0 /dp:1 {0}(607,256)(765,256)(765,236)(772,236){1}
wire w0;    //: /sn:0 /dp:1 {0}(586,253)(540,253)(540,244)(518,244){1}
//: {2}(514,244)(495,244){3}
//: {4}(516,246)(516,299)(574,299){5}
wire w8;    //: /sn:0 {0}(595,297)(647,297)(647,312)(657,312){1}
wire w11;    //: /sn:0 {0}(601,323)(647,323)(647,317)(657,317){1}
//: enddecls

  //: output g4 (Co) @(789,298) /sn:0 /w:[ 1 ]
  and g8 (.I0(B), .I1(A), .Z(w11));   //: @(591,323) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: output g3 (S) @(769,236) /sn:0 /w:[ 1 ]
  //: input g2 (Ci) @(386,283) /sn:0 /w:[ 0 ]
  //: input g1 (B) @(384,265) /sn:0 /w:[ 0 ]
  //: joint g10 (w0) @(516, 244) /w:[ 1 -1 2 4 ]
  xor g6 (.I0(A), .I1(B), .Z(w0));   //: @(485,244) /sn:0 /delay:" 6" /w:[ 3 3 3 ]
  and g7 (.I0(Ci), .I1(w0), .Z(w8));   //: @(585,297) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  or g9 (.I0(w8), .I1(w11), .Z(Co));   //: @(668,315) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  //: joint g12 (A) @(429, 240) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(w0), .I1(Ci), .Z(S));   //: @(597,256) /sn:0 /delay:" 6" /w:[ 0 3 0 ]
  //: joint g11 (Ci) @(546, 278) /w:[ -1 2 1 4 ]
  //: input g0 (A) @(386,240) /sn:0 /w:[ 0 ]
  //: joint g13 (B) @(449, 246) /w:[ 2 -1 1 4 ]

endmodule

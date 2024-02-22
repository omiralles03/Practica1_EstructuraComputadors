//: version "1.8.7"

module FA(Co, S, Ci, B, A);
//: interface  /sz:(146, 127) /bd:[ Ti0>A(37/146) Ti1>B(94/146) Li0>Ci(49/127) Ro0<Co(49/127) Ro1<S(98/127) ]
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
wire w6;    //: /sn:0 {0}(366,259)(437,259){1}
wire w7;    //: /sn:0 {0}(366,308)(426,308)(426,309)(436,309){1}
wire w0;    //: /sn:0 {0}(109,113)(313,113)(313,209){1}
wire w1;    //: /sn:0 {0}(109,175)(256,175)(256,209){1}
wire w2;    //: /sn:0 {0}(105,237)(208,237)(208,259)(218,259){1}
//: enddecls

  led g4 (.I(w7));   //: @(443,309) /sn:0 /R:3 /w:[ 1 ] /type:0
  FA g3 (.B(w0), .A(w1), .Ci(w2), .S(w7), .Co(w6));   //: @(219, 210) /sz:(146, 127) /sn:0 /p:[ Ti0>1 Ti1>1 Li0>1 Ro0<0 Ro1<0 ]
  //: switch g2 (w2) @(88,237) /sn:0 /w:[ 0 ] /st:1
  //: switch g1 (w1) @(92,175) /sn:0 /w:[ 0 ] /st:0
  led g5 (.I(w6));   //: @(444,259) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: switch g0 (w0) @(92,113) /sn:0 /w:[ 0 ] /st:0

endmodule

module mul8_v1 (input [7:0] a,b, output [15:0] y);

 and a00 (p00,a[0],b[0]);
 and a01 (p10,a[1],b[0]);
 and a02 (p20,a[2],b[0]);
 and a03 (p30,a[3],b[0]);
 and a04 (p40,a[4],b[0]);
 and a05 (p50,a[5],b[0]);
 and a06 (p60,a[6],b[0]);
 and a07 (p70,a[7],b[0]);
 
 and a10 (p01,a[0],b[1]);
 and a11 (p11,a[1],b[1]);
 and a12 (p21,a[2],b[1]);
 and a13 (p31,a[3],b[1]);
 and a14 (p41,a[4],b[1]);
 and a15 (p51,a[5],b[1]);
 and a16 (p61,a[6],b[1]);
 and a17 (p71,a[7],b[1]);
 
 and a20 (p02,a[0],b[2]);
 and a21 (p12,a[1],b[2]);
 and a22 (p22,a[2],b[2]);
 and a23 (p32,a[3],b[2]);
 and a24 (p42,a[4],b[2]);
 and a25 (p52,a[5],b[2]);
 and a26 (p62,a[6],b[2]);
 and a27 (p72,a[7],b[2]);
 
 and a30 (p03,a[0],b[3]);
 and a31 (p13,a[1],b[3]);
 and a32 (p23,a[2],b[3]);
 and a33 (p33,a[3],b[3]);
 and a34 (p43,a[4],b[3]);
 and a35 (p53,a[5],b[3]);
 and a36 (p63,a[6],b[3]);
 and a37 (p73,a[7],b[3]);
 
 and a40 (p04,a[0],b[4]);
 and a41 (p14,a[1],b[4]);
 and a42 (p24,a[2],b[4]);
 and a43 (p34,a[3],b[4]);
 and a44 (p44,a[4],b[4]);
 and a45 (p54,a[5],b[4]);
 and a46 (p64,a[6],b[4]);
 and a47 (p74,a[7],b[4]);
 
 and a50 (p05,a[0],b[5]);
 and a51 (p15,a[1],b[5]);
 and a52 (p25,a[2],b[5]);
 and a53 (p35,a[3],b[5]);
 and a54 (p45,a[4],b[5]);
 and a55 (p55,a[5],b[5]);
 and a56 (p65,a[6],b[5]);
 and a57 (p75,a[7],b[5]);
 
 and a60 (p06,a[0],b[6]);
 and a61 (p16,a[1],b[6]);
 and a62 (p26,a[2],b[6]);
 and a63 (p36,a[3],b[6]);
 and a64 (p46,a[4],b[6]);
 and a65 (p56,a[5],b[6]);
 and a66 (p66,a[6],b[6]);
 and a67 (p76,a[7],b[6]);
 
 and a70 (p07,a[0],b[7]);
 and a71 (p17,a[1],b[7]);
 and a72 (p27,a[2],b[7]);
 and a73 (p37,a[3],b[7]);
 and a74 (p47,a[4],b[7]);
 and a75 (p57,a[5],b[7]);
 and a76 (p67,a[6],b[7]);
 and a77 (p77,a[7],b[7]);
 
 assign y[0] = p00;
 
 assign {c1,y[1]}=p10+p01;
 
 assign {c3,c2,y[2]}=p20+p11+p02+c1;
 
 assign {c5,c4,y[3]}=p30+p21+p12+p03+c2;
 
 assign {c7,c6,y[4]}=p40+p31+p22+p13+p04+c3+c4;
 
 assign {c10,c9,c8,y[5]}=p50+p41+p32+p23+p14+p05+c5+c6;
 
 assign {c13,c12,c11,y[6]}=p60+p51+p42+p33+p24+p15+p06+c7+c8;
 
 assign {c16,c15,c14,y[7]}=p70+p61+p52+p43+p34+p25+p16+p07+c9+c11;
 
 assign {c19,c18,c17,y[8]}=p71+p62+p53+p44+p35+p26+p17+c10+c12+c14;
 
 assign {c22,c21,c20,y[9]}=p72+p63+p54+p45+p36+p27+c13+c15+c17;
 
 assign {c25,c24,c23,y[10]}=p73+p64+p55+p46+p37+c16+c18+c20;
 
 assign {c27,c26,y[11]}=p74+p65+p56+p47+c19+c21+c23;
 
 assign {c29,c28,y[12]}=p75+p66+p57+c22+c24+c26;
 
 assign {c31,c30,y[13]}=p76+p67+c25+c27+c28;
 
 assign {c32,y[14]}=p77+c29+c30;
 
 assign {dummy,y[15]}=c31+c32;
 
 endmodule
 
 /*
# 10111111000000001 
#  1111111000000001
*/
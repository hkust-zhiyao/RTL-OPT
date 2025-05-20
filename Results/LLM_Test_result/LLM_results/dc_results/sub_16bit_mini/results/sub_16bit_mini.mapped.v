/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Mon May 12 15:09:35 2025
/////////////////////////////////////////////////////////////


module sub_16bit_mini ( a, b, diff, overflow );
  input [15:0] a;
  input [15:0] b;
  output [15:0] diff;
  output overflow;
  wire   n5, n6, sub_20_n246, sub_20_n245, sub_20_n244, sub_20_n243,
         sub_20_n242, sub_20_n241, sub_20_n240, sub_20_n239, sub_20_n238,
         sub_20_n237, sub_20_n236, sub_20_n235, sub_20_n234, sub_20_n233,
         sub_20_n232, sub_20_n231, sub_20_n230, sub_20_n229, sub_20_n228,
         sub_20_n227, sub_20_n226, sub_20_n225, sub_20_n224, sub_20_n223,
         sub_20_n222, sub_20_n221, sub_20_n220, sub_20_n219, sub_20_n218,
         sub_20_n217, sub_20_n216, sub_20_n215, sub_20_n214, sub_20_n213,
         sub_20_n212, sub_20_n211, sub_20_n210, sub_20_n209, sub_20_n208,
         sub_20_n207, sub_20_n206, sub_20_n205, sub_20_n204, sub_20_n203,
         sub_20_n202, sub_20_n201, sub_20_n200, sub_20_n199, sub_20_n198,
         sub_20_n197, sub_20_n196, sub_20_n195, sub_20_n194, sub_20_n193,
         sub_20_n192, sub_20_n191, sub_20_n190, sub_20_n189, sub_20_n188,
         sub_20_n187, sub_20_n186, sub_20_n185, sub_20_n184, sub_20_n183,
         sub_20_n182, sub_20_n181, sub_20_n180, sub_20_n179, sub_20_n178,
         sub_20_n177, sub_20_n176, sub_20_n175, sub_20_n174, sub_20_n173,
         sub_20_n172, sub_20_n171, sub_20_n170, sub_20_n169, sub_20_n168,
         sub_20_n167, sub_20_n166, sub_20_n165, sub_20_n164, sub_20_n163,
         sub_20_n162, sub_20_n161, sub_20_n160, sub_20_n159, sub_20_n158,
         sub_20_n157, sub_20_n156, sub_20_n155, sub_20_n154, sub_20_n153,
         sub_20_n152, sub_20_n151, sub_20_n150, sub_20_n149, sub_20_n148,
         sub_20_n147, sub_20_n146, sub_20_n145, sub_20_n144, sub_20_n143,
         sub_20_n142, sub_20_n141, sub_20_n140, sub_20_n139, sub_20_n138,
         sub_20_n137, sub_20_n136, sub_20_n135, sub_20_n134, sub_20_n133,
         sub_20_n132, sub_20_n131, sub_20_n130, sub_20_n129, sub_20_n128,
         sub_20_n127, sub_20_n126, sub_20_n125, sub_20_n124, sub_20_n123,
         sub_20_n122, sub_20_n121, sub_20_n120, sub_20_n119, sub_20_n118,
         sub_20_n117, sub_20_n116, sub_20_n115, sub_20_n114, sub_20_n113,
         sub_20_n112, sub_20_n111, sub_20_n110, sub_20_n109, sub_20_n108,
         sub_20_n107, sub_20_n106, sub_20_n105, sub_20_n104, sub_20_n103,
         sub_20_n102, sub_20_n101, sub_20_n100, sub_20_n99, sub_20_n98,
         sub_20_n97, sub_20_n96, sub_20_n95, sub_20_n94, sub_20_n93,
         sub_20_n92, sub_20_n91, sub_20_n90, sub_20_n89, sub_20_n88,
         sub_20_n87, sub_20_n86, sub_20_n85, sub_20_n84, sub_20_n83,
         sub_20_n82, sub_20_n81, sub_20_n80, sub_20_n79, sub_20_n78,
         sub_20_n77, sub_20_n76, sub_20_n75, sub_20_n74, sub_20_n73,
         sub_20_n72, sub_20_n71, sub_20_n70, sub_20_n69, sub_20_n68,
         sub_20_n67, sub_20_n66, sub_20_n65, sub_20_n64, sub_20_n63,
         sub_20_n62, sub_20_n61, sub_20_n60, sub_20_n59, sub_20_n58,
         sub_20_n57, sub_20_n56, sub_20_n55, sub_20_n54, sub_20_n53,
         sub_20_n52, sub_20_n50, sub_20_n49, sub_20_n48, sub_20_n47,
         sub_20_n46, sub_20_n45, sub_20_n44, sub_20_n43, sub_20_n42,
         sub_20_n41, sub_20_n40, sub_20_n39, sub_20_n38, sub_20_n37,
         sub_20_n36, sub_20_n35, sub_20_n34, sub_20_n33, sub_20_n32,
         sub_20_n31, sub_20_n30, sub_20_n29, sub_20_n28, sub_20_n27,
         sub_20_n26, sub_20_n25, sub_20_n24, sub_20_n23, sub_20_n22,
         sub_20_n21, sub_20_n20, sub_20_n19, sub_20_n18, sub_20_n17,
         sub_20_n16, sub_20_n15, sub_20_n14, sub_20_n13, sub_20_n12,
         sub_20_n11, sub_20_n10, sub_20_n9, sub_20_n8, sub_20_n7, sub_20_n6,
         sub_20_n5, sub_20_n4, sub_20_n3, sub_20_n2, sub_20_n1;

  XNOR2_X1 U6 ( .A(a[15]), .B(b[15]), .ZN(n5) );
  NOR2_X1 U7 ( .A1(n6), .A2(n5), .ZN(overflow) );
  XNOR2_X1 U8 ( .A(diff[15]), .B(a[15]), .ZN(n6) );
  INV_X1 sub_20_U264 ( .A(sub_20_n115), .ZN(sub_20_n238) );
  INV_X1 sub_20_U263 ( .A(sub_20_n211), .ZN(sub_20_n195) );
  INV_X1 sub_20_U262 ( .A(sub_20_n21), .ZN(sub_20_n221) );
  INV_X1 sub_20_U261 ( .A(sub_20_n186), .ZN(sub_20_n79) );
  NOR2_X1 sub_20_U260 ( .A1(sub_20_n221), .A2(sub_20_n79), .ZN(sub_20_n220) );
  OAI21_X1 sub_20_U259 ( .B1(sub_20_n195), .B2(sub_20_n219), .A(sub_20_n220), 
        .ZN(sub_20_n217) );
  XNOR2_X1 sub_20_U258 ( .A(sub_20_n213), .B(sub_20_n214), .ZN(diff[10]) );
  INV_X1 sub_20_U257 ( .A(sub_20_n206), .ZN(sub_20_n212) );
  NAND2_X1 sub_20_U256 ( .A1(sub_20_n212), .A2(sub_20_n20), .ZN(sub_20_n202)
         );
  INV_X1 sub_20_U255 ( .A(sub_20_n88), .ZN(sub_20_n168) );
  NAND2_X1 sub_20_U254 ( .A1(sub_20_n168), .A2(sub_20_n20), .ZN(sub_20_n207)
         );
  INV_X1 sub_20_U253 ( .A(sub_20_n189), .ZN(sub_20_n78) );
  INV_X1 sub_20_U252 ( .A(sub_20_n15), .ZN(sub_20_n82) );
  NAND3_X1 sub_20_U251 ( .A1(sub_20_n187), .A2(sub_20_n186), .A3(sub_20_n82), 
        .ZN(sub_20_n209) );
  XNOR2_X1 sub_20_U250 ( .A(sub_20_n198), .B(sub_20_n199), .ZN(diff[11]) );
  INV_X1 sub_20_U249 ( .A(sub_20_n178), .ZN(sub_20_n182) );
  INV_X1 sub_20_U248 ( .A(sub_20_n167), .ZN(sub_20_n136) );
  INV_X1 sub_20_U247 ( .A(sub_20_n146), .ZN(sub_20_n169) );
  NOR2_X1 sub_20_U246 ( .A1(sub_20_n136), .A2(sub_20_n169), .ZN(sub_20_n180)
         );
  NOR2_X1 sub_20_U245 ( .A1(sub_20_n63), .A2(sub_20_n9), .ZN(sub_20_n176) );
  INV_X1 sub_20_U244 ( .A(sub_20_n52), .ZN(sub_20_n139) );
  NAND3_X1 sub_20_U243 ( .A1(sub_20_n170), .A2(sub_20_n22), .A3(sub_20_n139), 
        .ZN(sub_20_n164) );
  AOI21_X1 sub_20_U242 ( .B1(sub_20_n168), .B2(sub_20_n139), .A(sub_20_n169), 
        .ZN(sub_20_n165) );
  XNOR2_X1 sub_20_U241 ( .A(sub_20_n159), .B(sub_20_n160), .ZN(diff[13]) );
  NOR2_X1 sub_20_U240 ( .A1(sub_20_n63), .A2(sub_20_n72), .ZN(sub_20_n152) );
  NAND2_X1 sub_20_U239 ( .A1(sub_20_n152), .A2(sub_20_n153), .ZN(sub_20_n148)
         );
  NAND2_X1 sub_20_U238 ( .A1(sub_20_n150), .A2(sub_20_n46), .ZN(sub_20_n149)
         );
  NAND3_X1 sub_20_U237 ( .A1(sub_20_n129), .A2(sub_20_n128), .A3(sub_20_n127), 
        .ZN(sub_20_n126) );
  XNOR2_X1 sub_20_U236 ( .A(sub_20_n126), .B(sub_20_n50), .ZN(diff[15]) );
  INV_X1 sub_20_U235 ( .A(sub_20_n116), .ZN(sub_20_n113) );
  INV_X1 sub_20_U234 ( .A(sub_20_n48), .ZN(sub_20_n114) );
  OAI21_X1 sub_20_U233 ( .B1(sub_20_n113), .B2(sub_20_n114), .A(sub_20_n16), 
        .ZN(sub_20_n111) );
  XNOR2_X1 sub_20_U232 ( .A(sub_20_n111), .B(sub_20_n112), .ZN(diff[3]) );
  XNOR2_X1 sub_20_U231 ( .A(sub_20_n229), .B(sub_20_n106), .ZN(diff[4]) );
  INV_X1 sub_20_U230 ( .A(sub_20_n229), .ZN(sub_20_n104) );
  INV_X1 sub_20_U229 ( .A(sub_20_n97), .ZN(sub_20_n105) );
  XNOR2_X1 sub_20_U228 ( .A(sub_20_n101), .B(sub_20_n102), .ZN(diff[5]) );
  NAND3_X1 sub_20_U227 ( .A1(sub_20_n96), .A2(sub_20_n97), .A3(sub_20_n93), 
        .ZN(sub_20_n90) );
  INV_X1 sub_20_U226 ( .A(sub_20_n69), .ZN(sub_20_n92) );
  INV_X1 sub_20_U225 ( .A(sub_20_n95), .ZN(sub_20_n94) );
  NOR2_X1 sub_20_U224 ( .A1(sub_20_n78), .A2(sub_20_n79), .ZN(sub_20_n77) );
  NAND2_X1 sub_20_U223 ( .A1(sub_20_n58), .A2(b[13]), .ZN(sub_20_n151) );
  OAI21_X1 sub_20_U222 ( .B1(sub_20_n27), .B2(sub_20_n146), .A(sub_20_n147), 
        .ZN(sub_20_n144) );
  NOR2_X1 sub_20_U221 ( .A1(sub_20_n136), .A2(sub_20_n74), .ZN(sub_20_n130) );
  NOR2_X1 sub_20_U220 ( .A1(sub_20_n74), .A2(sub_20_n141), .ZN(sub_20_n140) );
  NAND2_X1 sub_20_U219 ( .A1(sub_20_n159), .A2(sub_20_n67), .ZN(sub_20_n158)
         );
  NAND2_X1 sub_20_U218 ( .A1(sub_20_n147), .A2(sub_20_n67), .ZN(sub_20_n160)
         );
  NAND2_X1 sub_20_U217 ( .A1(sub_20_n75), .A2(sub_20_n108), .ZN(sub_20_n138)
         );
  NAND2_X1 sub_20_U216 ( .A1(sub_20_n19), .A2(sub_20_n108), .ZN(sub_20_n194)
         );
  NAND4_X1 sub_20_U215 ( .A1(sub_20_n59), .A2(sub_20_n19), .A3(sub_20_n108), 
        .A4(sub_20_n110), .ZN(sub_20_n229) );
  NAND4_X1 sub_20_U214 ( .A1(sub_20_n163), .A2(sub_20_n164), .A3(sub_20_n165), 
        .A4(sub_20_n166), .ZN(sub_20_n159) );
  OAI21_X1 sub_20_U213 ( .B1(sub_20_n133), .B2(sub_20_n60), .A(sub_20_n134), 
        .ZN(sub_20_n132) );
  NAND2_X1 sub_20_U212 ( .A1(sub_20_n158), .A2(sub_20_n147), .ZN(sub_20_n154)
         );
  AOI21_X1 sub_20_U211 ( .B1(sub_20_n78), .B2(sub_20_n187), .A(sub_20_n18), 
        .ZN(sub_20_n208) );
  NAND2_X1 sub_20_U210 ( .A1(sub_20_n187), .A2(sub_20_n186), .ZN(sub_20_n206)
         );
  NAND4_X1 sub_20_U209 ( .A1(sub_20_n186), .A2(sub_20_n81), .A3(sub_20_n54), 
        .A4(sub_20_n188), .ZN(sub_20_n178) );
  INV_X1 sub_20_U208 ( .A(a[10]), .ZN(sub_20_n215) );
  AOI21_X1 sub_20_U207 ( .B1(sub_20_n80), .B2(sub_20_n182), .A(sub_20_n71), 
        .ZN(sub_20_n179) );
  XNOR2_X1 sub_20_U206 ( .A(sub_20_n179), .B(sub_20_n180), .ZN(diff[12]) );
  AOI21_X1 sub_20_U205 ( .B1(sub_20_n142), .B2(sub_20_n139), .A(sub_20_n143), 
        .ZN(sub_20_n127) );
  INV_X1 sub_20_U204 ( .A(a[9]), .ZN(sub_20_n197) );
  NAND2_X1 sub_20_U203 ( .A1(sub_20_n17), .A2(sub_20_n125), .ZN(diff[0]) );
  OAI211_X1 sub_20_U202 ( .C1(a[10]), .C2(sub_20_n171), .A(sub_20_n173), .B(
        sub_20_n172), .ZN(sub_20_n133) );
  INV_X1 sub_20_U201 ( .A(a[8]), .ZN(sub_20_n196) );
  NAND2_X1 sub_20_U200 ( .A1(sub_20_n184), .A2(sub_20_n183), .ZN(sub_20_n131)
         );
  AOI21_X1 sub_20_U199 ( .B1(sub_20_n131), .B2(sub_20_n130), .A(sub_20_n132), 
        .ZN(sub_20_n129) );
  NAND4_X1 sub_20_U198 ( .A1(sub_20_n28), .A2(sub_20_n87), .A3(sub_20_n93), 
        .A4(sub_20_n22), .ZN(sub_20_n211) );
  AOI21_X1 sub_20_U197 ( .B1(sub_20_n1), .B2(sub_20_n21), .A(sub_20_n82), .ZN(
        sub_20_n76) );
  XNOR2_X1 sub_20_U196 ( .A(sub_20_n76), .B(sub_20_n77), .ZN(diff[9]) );
  NAND2_X1 sub_20_U195 ( .A1(sub_20_n109), .A2(sub_20_n110), .ZN(sub_20_n137)
         );
  NAND2_X1 sub_20_U194 ( .A1(b[14]), .A2(sub_20_n56), .ZN(sub_20_n145) );
  INV_X1 sub_20_U193 ( .A(sub_20_n46), .ZN(sub_20_n74) );
  NAND2_X1 sub_20_U192 ( .A1(sub_20_n59), .A2(sub_20_n110), .ZN(sub_20_n193)
         );
  INV_X1 sub_20_U191 ( .A(sub_20_n133), .ZN(sub_20_n73) );
  NOR2_X1 sub_20_U190 ( .A1(sub_20_n148), .A2(sub_20_n149), .ZN(sub_20_n142)
         );
  INV_X1 sub_20_U189 ( .A(b[1]), .ZN(sub_20_n122) );
  INV_X1 sub_20_U188 ( .A(a[1]), .ZN(sub_20_n236) );
  NAND2_X1 sub_20_U187 ( .A1(sub_20_n57), .A2(sub_20_n167), .ZN(sub_20_n166)
         );
  NAND2_X1 sub_20_U186 ( .A1(sub_20_n187), .A2(sub_20_n210), .ZN(sub_20_n214)
         );
  NAND2_X1 sub_20_U185 ( .A1(sub_20_n32), .A2(sub_20_n110), .ZN(sub_20_n112)
         );
  INV_X1 sub_20_U184 ( .A(a[2]), .ZN(sub_20_n237) );
  INV_X1 sub_20_U183 ( .A(a[14]), .ZN(sub_20_n157) );
  NAND2_X1 sub_20_U182 ( .A1(sub_20_n55), .A2(sub_20_n120), .ZN(sub_20_n118)
         );
  NAND2_X1 sub_20_U181 ( .A1(sub_20_n55), .A2(sub_20_n26), .ZN(sub_20_n121) );
  INV_X1 sub_20_U180 ( .A(a[6]), .ZN(sub_20_n228) );
  AND2_X1 sub_20_U179 ( .A1(b[6]), .A2(sub_20_n228), .ZN(sub_20_n72) );
  INV_X1 sub_20_U178 ( .A(a[3]), .ZN(sub_20_n239) );
  INV_X1 sub_20_U177 ( .A(a[13]), .ZN(sub_20_n161) );
  AOI21_X1 sub_20_U176 ( .B1(sub_20_n124), .B2(sub_20_n119), .A(sub_20_n233), 
        .ZN(sub_20_n231) );
  NAND2_X1 sub_20_U175 ( .A1(sub_20_n123), .A2(sub_20_n124), .ZN(sub_20_n120)
         );
  XNOR2_X1 sub_20_U174 ( .A(sub_20_n154), .B(sub_20_n155), .ZN(diff[14]) );
  CLKBUF_X1 sub_20_U173 ( .A(sub_20_n57), .Z(sub_20_n71) );
  NOR2_X1 sub_20_U172 ( .A1(sub_20_n211), .A2(sub_20_n202), .ZN(sub_20_n204)
         );
  NAND2_X1 sub_20_U171 ( .A1(sub_20_n190), .A2(sub_20_n188), .ZN(sub_20_n199)
         );
  AOI21_X1 sub_20_U170 ( .B1(sub_20_n18), .B2(sub_20_n188), .A(sub_20_n25), 
        .ZN(sub_20_n183) );
  INV_X1 sub_20_U169 ( .A(a[8]), .ZN(sub_20_n70) );
  NAND2_X1 sub_20_U168 ( .A1(sub_20_n48), .A2(sub_20_n16), .ZN(sub_20_n117) );
  NAND2_X1 sub_20_U167 ( .A1(sub_20_n65), .A2(sub_20_n134), .ZN(sub_20_n155)
         );
  NAND2_X1 sub_20_U166 ( .A1(a[1]), .A2(sub_20_n122), .ZN(sub_20_n119) );
  AND2_X1 sub_20_U165 ( .A1(sub_20_n211), .A2(sub_20_n5), .ZN(sub_20_n191) );
  NAND2_X1 sub_20_U164 ( .A1(sub_20_n238), .A2(sub_20_n32), .ZN(sub_20_n108)
         );
  INV_X1 sub_20_U163 ( .A(b[5]), .ZN(sub_20_n224) );
  NAND2_X1 sub_20_U162 ( .A1(a[5]), .A2(sub_20_n14), .ZN(sub_20_n69) );
  NAND2_X1 sub_20_U161 ( .A1(a[5]), .A2(sub_20_n14), .ZN(sub_20_n68) );
  NAND2_X1 sub_20_U160 ( .A1(b[13]), .A2(sub_20_n161), .ZN(sub_20_n67) );
  NAND2_X1 sub_20_U159 ( .A1(sub_20_n237), .A2(b[2]), .ZN(sub_20_n66) );
  INV_X1 sub_20_U158 ( .A(a[11]), .ZN(sub_20_n200) );
  NAND2_X1 sub_20_U157 ( .A1(b[14]), .A2(sub_20_n157), .ZN(sub_20_n65) );
  NAND2_X1 sub_20_U156 ( .A1(a[8]), .A2(sub_20_n223), .ZN(sub_20_n84) );
  NAND2_X1 sub_20_U155 ( .A1(sub_20_n30), .A2(sub_20_n5), .ZN(sub_20_n219) );
  NAND2_X1 sub_20_U154 ( .A1(sub_20_n189), .A2(sub_20_n84), .ZN(sub_20_n185)
         );
  NAND2_X1 sub_20_U153 ( .A1(sub_20_n20), .A2(sub_20_n30), .ZN(sub_20_n83) );
  INV_X1 sub_20_U152 ( .A(a[0]), .ZN(sub_20_n245) );
  INV_X1 sub_20_U151 ( .A(b[0]), .ZN(sub_20_n246) );
  INV_X1 sub_20_U150 ( .A(b[12]), .ZN(sub_20_n174) );
  NAND2_X1 sub_20_U149 ( .A1(b[3]), .A2(sub_20_n13), .ZN(sub_20_n64) );
  INV_X1 sub_20_U148 ( .A(b[11]), .ZN(sub_20_n175) );
  INV_X1 sub_20_U147 ( .A(a[7]), .ZN(sub_20_n244) );
  AND2_X1 sub_20_U146 ( .A1(b[7]), .A2(sub_20_n244), .ZN(sub_20_n63) );
  NAND2_X1 sub_20_U145 ( .A1(sub_20_n232), .A2(sub_20_n231), .ZN(sub_20_n109)
         );
  NOR2_X1 sub_20_U144 ( .A1(sub_20_n62), .A2(sub_20_n229), .ZN(sub_20_n89) );
  OAI21_X1 sub_20_U143 ( .B1(sub_20_n89), .B2(sub_20_n90), .A(sub_20_n91), 
        .ZN(sub_20_n85) );
  NAND2_X1 sub_20_U142 ( .A1(sub_20_n95), .A2(sub_20_n226), .ZN(sub_20_n150)
         );
  AND2_X1 sub_20_U141 ( .A1(sub_20_n28), .A2(sub_20_n176), .ZN(sub_20_n170) );
  INV_X1 sub_20_U140 ( .A(b[4]), .ZN(sub_20_n225) );
  INV_X1 sub_20_U139 ( .A(a[9]), .ZN(sub_20_n61) );
  OR2_X1 sub_20_U138 ( .A1(sub_20_n135), .A2(sub_20_n88), .ZN(sub_20_n60) );
  INV_X1 sub_20_U137 ( .A(b[6]), .ZN(sub_20_n227) );
  NAND2_X1 sub_20_U136 ( .A1(sub_20_n7), .A2(sub_20_n31), .ZN(sub_20_n59) );
  INV_X1 sub_20_U135 ( .A(a[13]), .ZN(sub_20_n58) );
  NAND2_X1 sub_20_U134 ( .A1(sub_20_n184), .A2(sub_20_n53), .ZN(sub_20_n57) );
  NAND2_X1 sub_20_U133 ( .A1(a[11]), .A2(sub_20_n175), .ZN(sub_20_n190) );
  OAI211_X1 sub_20_U132 ( .C1(sub_20_n193), .C2(sub_20_n194), .A(sub_20_n177), 
        .B(sub_20_n11), .ZN(sub_20_n163) );
  INV_X1 sub_20_U131 ( .A(a[14]), .ZN(sub_20_n56) );
  NAND2_X1 sub_20_U130 ( .A1(a[4]), .A2(sub_20_n225), .ZN(sub_20_n100) );
  NAND2_X1 sub_20_U129 ( .A1(sub_20_n97), .A2(sub_20_n100), .ZN(sub_20_n106)
         );
  OAI21_X1 sub_20_U128 ( .B1(sub_20_n104), .B2(sub_20_n105), .A(sub_20_n100), 
        .ZN(sub_20_n101) );
  NAND2_X1 sub_20_U127 ( .A1(b[7]), .A2(sub_20_n244), .ZN(sub_20_n87) );
  NAND4_X1 sub_20_U126 ( .A1(sub_20_n87), .A2(sub_20_n242), .A3(sub_20_n243), 
        .A4(sub_20_n241), .ZN(sub_20_n141) );
  NAND2_X1 sub_20_U125 ( .A1(b[1]), .A2(sub_20_n236), .ZN(sub_20_n55) );
  NAND2_X1 sub_20_U124 ( .A1(b[10]), .A2(sub_20_n215), .ZN(sub_20_n54) );
  AOI21_X1 sub_20_U123 ( .B1(sub_20_n18), .B2(sub_20_n188), .A(sub_20_n25), 
        .ZN(sub_20_n53) );
  NAND2_X1 sub_20_U122 ( .A1(a[9]), .A2(sub_20_n218), .ZN(sub_20_n189) );
  OAI211_X1 sub_20_U121 ( .C1(a[10]), .C2(sub_20_n171), .A(sub_20_n29), .B(
        sub_20_n45), .ZN(sub_20_n52) );
  INV_X1 sub_20_U120 ( .A(b[2]), .ZN(sub_20_n240) );
  NAND2_X1 sub_20_U119 ( .A1(a[2]), .A2(sub_20_n240), .ZN(sub_20_n115) );
  AND2_X1 sub_20_U117 ( .A1(a[4]), .A2(sub_20_n225), .ZN(sub_20_n62) );
  NAND2_X1 sub_20_U116 ( .A1(b[4]), .A2(sub_20_n107), .ZN(sub_20_n97) );
  NAND2_X1 sub_20_U115 ( .A1(b[5]), .A2(sub_20_n103), .ZN(sub_20_n96) );
  INV_X1 sub_20_U114 ( .A(b[14]), .ZN(sub_20_n156) );
  NAND2_X1 sub_20_U113 ( .A1(a[14]), .A2(sub_20_n156), .ZN(sub_20_n134) );
  NAND2_X1 sub_20_U112 ( .A1(b[6]), .A2(sub_20_n38), .ZN(sub_20_n93) );
  INV_X1 sub_20_U111 ( .A(b[3]), .ZN(sub_20_n230) );
  NAND2_X1 sub_20_U110 ( .A1(sub_20_n96), .A2(sub_20_n68), .ZN(sub_20_n102) );
  INV_X1 sub_20_U109 ( .A(a[12]), .ZN(sub_20_n181) );
  NAND2_X1 sub_20_U108 ( .A1(b[12]), .A2(sub_20_n181), .ZN(sub_20_n167) );
  NAND2_X1 sub_20_U107 ( .A1(a[12]), .A2(sub_20_n174), .ZN(sub_20_n146) );
  NAND2_X1 sub_20_U106 ( .A1(b[4]), .A2(sub_20_n107), .ZN(sub_20_n241) );
  INV_X1 sub_20_U105 ( .A(a[4]), .ZN(sub_20_n107) );
  NAND2_X1 sub_20_U104 ( .A1(b[6]), .A2(sub_20_n228), .ZN(sub_20_n242) );
  INV_X1 sub_20_U103 ( .A(b[9]), .ZN(sub_20_n218) );
  NAND2_X1 sub_20_U102 ( .A1(b[5]), .A2(sub_20_n103), .ZN(sub_20_n243) );
  INV_X1 sub_20_U101 ( .A(a[5]), .ZN(sub_20_n103) );
  NAND2_X1 sub_20_U100 ( .A1(b[10]), .A2(sub_20_n215), .ZN(sub_20_n187) );
  INV_X1 sub_20_U99 ( .A(b[7]), .ZN(sub_20_n222) );
  NAND2_X1 sub_20_U98 ( .A1(sub_20_n222), .A2(a[7]), .ZN(sub_20_n88) );
  INV_X1 sub_20_U97 ( .A(b[13]), .ZN(sub_20_n162) );
  NAND2_X1 sub_20_U96 ( .A1(a[13]), .A2(sub_20_n162), .ZN(sub_20_n147) );
  INV_X1 sub_20_U95 ( .A(b[8]), .ZN(sub_20_n223) );
  INV_X1 sub_20_U94 ( .A(b[10]), .ZN(sub_20_n171) );
  NOR2_X1 sub_20_U93 ( .A1(sub_20_n224), .A2(a[5]), .ZN(sub_20_n226) );
  XOR2_X1 sub_20_U92 ( .A(b[15]), .B(a[15]), .Z(sub_20_n50) );
  XNOR2_X1 sub_20_U91 ( .A(sub_20_n120), .B(sub_20_n121), .ZN(diff[1]) );
  AOI21_X1 sub_20_U90 ( .B1(sub_20_n92), .B2(sub_20_n93), .A(sub_20_n94), .ZN(
        sub_20_n91) );
  XNOR2_X1 sub_20_U89 ( .A(sub_20_n116), .B(sub_20_n117), .ZN(diff[2]) );
  NAND2_X1 sub_20_U88 ( .A1(sub_20_n118), .A2(sub_20_n119), .ZN(sub_20_n116)
         );
  XNOR2_X1 sub_20_U87 ( .A(sub_20_n1), .B(sub_20_n83), .ZN(diff[8]) );
  NAND2_X1 sub_20_U86 ( .A1(sub_20_n186), .A2(sub_20_n21), .ZN(sub_20_n216) );
  OAI211_X1 sub_20_U85 ( .C1(sub_20_n201), .C2(sub_20_n216), .A(sub_20_n217), 
        .B(sub_20_n6), .ZN(sub_20_n213) );
  NAND2_X1 sub_20_U84 ( .A1(sub_20_n11), .A2(sub_20_n229), .ZN(sub_20_n201) );
  OAI21_X1 sub_20_U83 ( .B1(sub_20_n201), .B2(sub_20_n202), .A(sub_20_n203), 
        .ZN(sub_20_n198) );
  OAI211_X1 sub_20_U82 ( .C1(sub_20_n206), .C2(sub_20_n207), .A(sub_20_n208), 
        .B(sub_20_n209), .ZN(sub_20_n205) );
  NOR2_X1 sub_20_U81 ( .A1(sub_20_n204), .A2(sub_20_n205), .ZN(sub_20_n203) );
  NAND2_X1 sub_20_U80 ( .A1(sub_20_n87), .A2(sub_20_n5), .ZN(sub_20_n86) );
  XNOR2_X1 sub_20_U79 ( .A(sub_20_n85), .B(sub_20_n86), .ZN(diff[7]) );
  OAI21_X1 sub_20_U78 ( .B1(sub_20_n194), .B2(sub_20_n193), .A(sub_20_n11), 
        .ZN(sub_20_n192) );
  NAND2_X1 sub_20_U77 ( .A1(sub_20_n191), .A2(sub_20_n192), .ZN(sub_20_n80) );
  NAND2_X1 sub_20_U76 ( .A1(sub_20_n97), .A2(sub_20_n96), .ZN(sub_20_n99) );
  OAI21_X1 sub_20_U75 ( .B1(sub_20_n89), .B2(sub_20_n99), .A(sub_20_n69), .ZN(
        sub_20_n98) );
  NOR2_X1 sub_20_U74 ( .A1(sub_20_n178), .A2(sub_20_n136), .ZN(sub_20_n177) );
  INV_X1 sub_20_U73 ( .A(a[2]), .ZN(sub_20_n49) );
  NAND2_X1 sub_20_U72 ( .A1(b[2]), .A2(sub_20_n49), .ZN(sub_20_n48) );
  INV_X1 sub_20_U71 ( .A(a[3]), .ZN(sub_20_n47) );
  AND2_X1 sub_20_U70 ( .A1(sub_20_n145), .A2(sub_20_n151), .ZN(sub_20_n46) );
  AOI22_X1 sub_20_U69 ( .A1(sub_20_n70), .A2(b[8]), .B1(sub_20_n10), .B2(b[9]), 
        .ZN(sub_20_n173) );
  INV_X1 sub_20_U68 ( .A(a[12]), .ZN(sub_20_n44) );
  INV_X1 sub_20_U67 ( .A(a[11]), .ZN(sub_20_n43) );
  INV_X1 sub_20_U66 ( .A(b[13]), .ZN(sub_20_n42) );
  INV_X1 sub_20_U65 ( .A(b[14]), .ZN(sub_20_n41) );
  OAI22_X1 sub_20_U64 ( .A1(sub_20_n41), .A2(a[14]), .B1(sub_20_n162), .B2(
        a[13]), .ZN(sub_20_n135) );
  NAND2_X1 sub_20_U63 ( .A1(sub_20_n227), .A2(a[6]), .ZN(sub_20_n95) );
  AND2_X1 sub_20_U62 ( .A1(sub_20_n144), .A2(sub_20_n65), .ZN(sub_20_n143) );
  INV_X1 sub_20_U61 ( .A(a[5]), .ZN(sub_20_n40) );
  INV_X1 sub_20_U60 ( .A(a[4]), .ZN(sub_20_n39) );
  INV_X1 sub_20_U59 ( .A(a[6]), .ZN(sub_20_n38) );
  OAI211_X1 sub_20_U58 ( .C1(sub_20_n138), .C2(sub_20_n137), .A(sub_20_n140), 
        .B(sub_20_n73), .ZN(sub_20_n128) );
  NAND4_X1 sub_20_U57 ( .A1(sub_20_n185), .A2(sub_20_n186), .A3(sub_20_n54), 
        .A4(sub_20_n188), .ZN(sub_20_n184) );
  NAND2_X1 sub_20_U56 ( .A1(sub_20_n245), .A2(b[0]), .ZN(sub_20_n125) );
  INV_X1 sub_20_U55 ( .A(b[0]), .ZN(sub_20_n37) );
  INV_X1 sub_20_U54 ( .A(b[1]), .ZN(sub_20_n36) );
  OAI22_X1 sub_20_U53 ( .A1(sub_20_n4), .A2(a[1]), .B1(sub_20_n37), .B2(a[0]), 
        .ZN(sub_20_n235) );
  AOI22_X1 sub_20_U52 ( .A1(sub_20_n197), .A2(b[9]), .B1(sub_20_n70), .B2(b[8]), .ZN(sub_20_n45) );
  NAND2_X1 sub_20_U51 ( .A1(sub_20_n246), .A2(a[0]), .ZN(sub_20_n124) );
  INV_X1 sub_20_U50 ( .A(b[1]), .ZN(sub_20_n35) );
  NOR2_X1 sub_20_U49 ( .A1(sub_20_n35), .A2(a[1]), .ZN(sub_20_n233) );
  AND2_X1 sub_20_U48 ( .A1(sub_20_n47), .A2(b[3]), .ZN(sub_20_n33) );
  NOR2_X1 sub_20_U47 ( .A1(sub_20_n33), .A2(sub_20_n34), .ZN(sub_20_n232) );
  NAND2_X1 sub_20_U46 ( .A1(sub_20_n239), .A2(b[3]), .ZN(sub_20_n32) );
  AOI21_X1 sub_20_U45 ( .B1(sub_20_n26), .B2(sub_20_n17), .A(sub_20_n23), .ZN(
        sub_20_n31) );
  CLKBUF_X1 sub_20_U44 ( .A(sub_20_n15), .Z(sub_20_n30) );
  AOI22_X1 sub_20_U43 ( .A1(sub_20_n43), .A2(b[11]), .B1(sub_20_n8), .B2(b[12]), .ZN(sub_20_n172) );
  AOI22_X1 sub_20_U42 ( .A1(sub_20_n43), .A2(b[11]), .B1(sub_20_n44), .B2(
        b[12]), .ZN(sub_20_n29) );
  OAI22_X1 sub_20_U41 ( .A1(sub_20_n41), .A2(a[14]), .B1(sub_20_n42), .B2(
        a[13]), .ZN(sub_20_n27) );
  NAND2_X1 sub_20_U40 ( .A1(a[1]), .A2(sub_20_n36), .ZN(sub_20_n26) );
  AND2_X1 sub_20_U39 ( .A1(a[11]), .A2(sub_20_n175), .ZN(sub_20_n25) );
  INV_X1 sub_20_U38 ( .A(a[2]), .ZN(sub_20_n24) );
  NOR2_X1 sub_20_U37 ( .A1(sub_20_n3), .A2(a[1]), .ZN(sub_20_n23) );
  NAND2_X1 sub_20_U36 ( .A1(b[8]), .A2(sub_20_n196), .ZN(sub_20_n81) );
  NAND2_X1 sub_20_U35 ( .A1(b[8]), .A2(sub_20_n196), .ZN(sub_20_n21) );
  NAND2_X1 sub_20_U34 ( .A1(b[8]), .A2(sub_20_n196), .ZN(sub_20_n20) );
  BUF_X1 sub_20_U33 ( .A(sub_20_n150), .Z(sub_20_n28) );
  OR2_X1 sub_20_U32 ( .A1(sub_20_n234), .A2(sub_20_n235), .ZN(sub_20_n75) );
  OR2_X1 sub_20_U31 ( .A1(sub_20_n234), .A2(sub_20_n235), .ZN(sub_20_n19) );
  AND2_X2 sub_20_U30 ( .A1(a[10]), .A2(sub_20_n171), .ZN(sub_20_n18) );
  NAND2_X1 sub_20_U29 ( .A1(sub_20_n246), .A2(a[0]), .ZN(sub_20_n17) );
  OAI222_X1 sub_20_U28 ( .A1(sub_20_n38), .A2(b[6]), .B1(sub_20_n39), .B2(b[4]), .C1(sub_20_n40), .C2(b[5]), .ZN(sub_20_n153) );
  CLKBUF_X1 sub_20_U27 ( .A(sub_20_n115), .Z(sub_20_n16) );
  NAND2_X1 sub_20_U26 ( .A1(a[8]), .A2(sub_20_n223), .ZN(sub_20_n15) );
  INV_X1 sub_20_U25 ( .A(b[5]), .ZN(sub_20_n14) );
  INV_X1 sub_20_U24 ( .A(a[3]), .ZN(sub_20_n13) );
  AND2_X1 sub_20_U23 ( .A1(sub_20_n93), .A2(sub_20_n95), .ZN(sub_20_n12) );
  XOR2_X1 sub_20_U22 ( .A(sub_20_n98), .B(sub_20_n12), .Z(diff[6]) );
  AND4_X1 sub_20_U21 ( .A1(sub_20_n241), .A2(sub_20_n242), .A3(sub_20_n243), 
        .A4(sub_20_n87), .ZN(sub_20_n11) );
  INV_X1 sub_20_U20 ( .A(sub_20_n18), .ZN(sub_20_n210) );
  NAND2_X1 sub_20_U19 ( .A1(a[3]), .A2(sub_20_n230), .ZN(sub_20_n110) );
  OAI222_X1 sub_20_U18 ( .A1(sub_20_n38), .A2(b[6]), .B1(sub_20_n39), .B2(b[4]), .C1(sub_20_n40), .C2(b[5]), .ZN(sub_20_n22) );
  INV_X1 sub_20_U17 ( .A(a[9]), .ZN(sub_20_n10) );
  INV_X1 sub_20_U16 ( .A(sub_20_n242), .ZN(sub_20_n9) );
  INV_X1 sub_20_U15 ( .A(a[12]), .ZN(sub_20_n8) );
  NOR2_X1 sub_20_U14 ( .A1(sub_20_n33), .A2(sub_20_n2), .ZN(sub_20_n7) );
  NAND2_X2 sub_20_U13 ( .A1(b[9]), .A2(sub_20_n61), .ZN(sub_20_n186) );
  INV_X1 sub_20_U12 ( .A(sub_20_n78), .ZN(sub_20_n6) );
  CLKBUF_X1 sub_20_U11 ( .A(sub_20_n88), .Z(sub_20_n5) );
  INV_X1 sub_20_U10 ( .A(b[1]), .ZN(sub_20_n4) );
  INV_X1 sub_20_U9 ( .A(b[1]), .ZN(sub_20_n3) );
  AND2_X1 sub_20_U8 ( .A1(sub_20_n24), .A2(b[2]), .ZN(sub_20_n34) );
  AND2_X1 sub_20_U7 ( .A1(sub_20_n24), .A2(b[2]), .ZN(sub_20_n2) );
  NAND2_X2 sub_20_U6 ( .A1(sub_20_n200), .A2(b[11]), .ZN(sub_20_n188) );
  NAND2_X1 sub_20_U5 ( .A1(sub_20_n191), .A2(sub_20_n192), .ZN(sub_20_n1) );
  NAND3_X1 sub_20_U4 ( .A1(sub_20_n64), .A2(sub_20_n66), .A3(1'b1), .ZN(
        sub_20_n234) );
  INV_X2 sub_20_U3 ( .A(sub_20_n125), .ZN(sub_20_n123) );
endmodule


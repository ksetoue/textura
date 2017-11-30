
p1 = [1, 0.943999612135071, 0.866013191831751, 0.784363001849340, 0.667086253035418];
r1 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p2 = [1, 0.934914449960158, 0.869130523296681, 0.787585943281924, 0.665183040199789];
r2 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p3 = [1, 0.937030931609153, 0.868050855645340, 0.781271040820086, 0.682668874025885];
r3 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p4 = [1, 0.932329771791587, 0.854463530843670, 0.768896558917933, 0.652521947191297];
r4 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p5 = [1, 0.940618509315511, 0.866350395312385,0.780465699138308,0.682928188625737];
r5 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p6 = [1, 0.944939011584515,0.866070188776246,0.759383289530969,0.637421315369766];
r6 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p7 = [1, 0.938202599342442,0.853094156230342,0.773851011268969,0.648296974254116];
r7 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p8 = [1, 0.942916922586901,0.864565808546532,0.778311417270142,0.662355067674765];
r8 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p9 = [1, 0.926320337049430,0.853686132041277,0.742502886791502,0.637941294586826];
r9 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p10 = [1,0.951882464445235,0.877640190737674,0.786962362848727,0.660730851785222];
r10 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

p = [p1;p2;p3;p4;p5;p6;p7;p8;p9;p10];
r = [r1;r2;r3;r4;r5;r6;r7;r8;r9;r10];

mP = mean(p); 
mR = mean(r);
% plot(mR,mP);
% title('Precision x Recall - LBP');
% title('Precision x Recall - GLCM');
% title('Precision x Recall - Complex Coordinates');
% ylabel('precision'); 
% xlabel('recall');
area = trapz(mR, mP);
% ------------------------ 


glcmp1 = [1,0.882075650827714,0.788135059570052,0.682198668469427,0.529994755419413];
glcmr1 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp2 = [1,0.882242475280133,0.777009780623070,0.640635548331982,0.523277976337457];
glcmr2 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp3 = [1,0.887485082207494,0.772021845118071,0.651202239246649,0.514489931081873];
glcmr3 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp4 = [1,0.885505570851870,0.770879467931291,0.668142940614173,0.517236246644242];
glcmr4 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp5 = [1,0.899260600325339,0.780250306881145,0.679531681361415,0.550974208844856];
glcmr5 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp6 = [1,0.893575926405256,0.768447790929462,0.656906798118923,0.515052582470213];
glcmr6 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp7 = [1,0.894801097745745,0.786734227447496,0.661329937872522,0.521233544018673];
glcmr7 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp8 = [1,0.905031994011035,0.779167536189691,0.651449388124727,0.526200541433088];
glcmr8 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp9 = [1,0.884051071201805,0.743532975157382,0.634590840784609,0.474818673560606];
glcmr9 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];
glcmp10 = [1,0.878754893889253,0.759078630300955,0.645143578059785,0.510588832406699];
glcmr10 = [0.200000000000000, 0.400000000000000, 0.600000000000000, 0.800000000000000, 1];

pGLCM = [glcmp1;glcmp2;glcmp3;glcmp4;glcmp5;glcmp6;glcmp7;glcmp8;glcmp9;glcmp10];
rGLCM = [glcmr1;glcmr2;glcmr3;glcmr4;glcmr5;glcmr6;glcmr7;glcmr8;glcmr9;glcmr10];

mPglcm = mean(pGLCM); 
mRglcm = mean(rGLCM);
plot(mRglcm,mPglcm);
% title('Precision x Recall - LBP');
% title('Precision x Recall - GLCM');
% title('Precision x Recall - Complex Coordinates');
ylabel('precision'); 
xlabel('recall');
areaGLCM = trapz(mRglcm, mPglcm);

% ------------------------ 
ylabel('precision'); 
xlabel('recall');
% figure
title('Precision x Recall');
%red --> LBP 
%blue --> GLCM
plot(mR,mP,'r-*',mRglcm,mPglcm,'b-o', 'LineWidth',2); 
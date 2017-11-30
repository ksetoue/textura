clc;
clear;

% classes = 20; 
% label = 5;
classes = 112; 
label = 5;

s = loadBrodatz(); 

distancias = struct; 

[lin, col] = size(s); 
for j = 1:col
%     dista = (1:col);
%     dista = dista(:);
    dista = struct;
%     G = s(j).lbp;
    G = s(j).glcm; 
%     G = s(j).gabor; 
    for k = 1:col
%         v = s(k).lbp;
        v = s(k).glcm;
%         v = s(k).gabor;
        dista(k).value = norm(G-v);         
        dista(k).class = s(k).class; 
        dista(k).label = s(k).label;
    end
    distancias(j).class = s(j).class;
    distancias(j).label = s(j).label;
    distancias(j).dista = dista;
end


for j = 1: col    
    a = distancias(j).dista;
    Afields = fieldnames(a);
    Acell = struct2cell(a);
    sz = size(Acell);
    Acell = reshape(Acell, sz(1), []);
    Acell = Acell';
    Acell = sortrows(Acell, 1);
    Acell = reshape(Acell', sz);
    Asorted = cell2struct(Acell, Afields, 1);
    distancias(j).dista = Asorted;
end

precRecall = struct; 

for recall = 1:label
    precision=0;
    for i=1:col
        b = struct;
        b.class = distancias(i).class;
        b.label = distancias(i).label;
        b.dista = distancias(i).dista;
        
        numRelRet = 0; 
        numRet = 0; 
        index = 1;
        while numRelRet < recall
           
           if b.dista(index).class == b.class
              numRelRet = numRelRet + 1;  
           end
           numRet = numRet + 1; 
           
           index = index + 1; 
        end
        precision = precision + numRelRet/numRet;
    end
%     precision = precision/55.0; 
    precision = precision/560.0;
    
    precRecall(recall).precision = precision; 
    precRecall(recall).recall = recall/5.0; 
end

p = (1:5);
p = p(:);

r = (1:5);
r = r(:);

for i = 1:5
    p(i,1) = precRecall(i).precision; 
    r(i,1) = precRecall(i).recall; 
end

plot(r,p);
title('Precision x Recall - LBP');
% title('Precision x Recall - GLCM');
% title('Precision x Recall - Complex Coordinates');
ylabel('precision'); 
xlabel('recall');
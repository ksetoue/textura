% define classes 
class1 = imread('D62.gif'); 
class2 = imread('D26.gif');

% define number of samples
nsamples = 10; 

% define number of tests and its size
ntests = 3;
ssize = 60; 

% define initial positions and samples 
x0 = 0;
y0 = 0;
samples = cell(nsamples,3);

for i = 1:nsamples
    if i <= nsamples/2
        slice = imcrop(class1, [x0 y0 ssize ssize]);
        samples(i,3) = {1};   
    else
        slice = imcrop(class2, [x0 y0 ssize ssize]);
        samples(i,3) = {2};
    end
    samples(i,1) = {slice};
    samples(i, 2) = {extractLBPFeatures(slice, 'Upright', false)};
    x0 = randi([1 ssize]);
    y0 = randi([1 ssize]);
end

consulta = randi([nsamples/2 nsamples]);
% consulta = randi([1 nsamples/2]);

amconsult = cell(1,3);
amconsult{1,1} = samples{consulta,1};
amconsult{1,2} = samples{consulta,2};
amconsult{1,3} = samples{consulta,3};

base = cell(nsamples-1, 4);
a = 1;

for k = 1:nsamples 
    if k ~= consulta
        base{a,1} = samples{k,1};
        base{a,2} = samples{k,2};
        base{a,3} = samples{k,3};
        a = a + 1;
    end
end 

a = 1;
for k = 1:nsamples-1
    aux = amconsult{1,2};
    base{a,4} = norm(samples{k,2} - aux);
    a = a + 1;
end

list = sortrows(base, 4);
precision = zeros(1, nsamples-1);
position = 0;

for k = 1:nsamples-1
    count = 0;
    for j = 1:k
        if base{k, 3} == amconsult{1,3}
            count = count + 1
        end
    end
    precision(1,k) = count/k;
end


function brodatz = loadBrodatz()
% Read 1.jpg through m.jpg.  
% Files are in the "yourFolder" directory.

classes = 112; 
labels = 5;

samples = struct;

sampleIndex = 1;
yourFolder = sprintf('classes/');

count = 1; 
x0 = 0;
y0 = 0;
ssize = 64;

for i = 1:classes
    for k = 1:labels        
        filename = sprintf('D%d.gif', i);
        fullFileName = fullfile(yourFolder, filename);
        if exist(fullFileName, 'file')
            imageData = imread(fullFileName );
            slice = imcrop(imageData, [x0 y0 ssize ssize]);
            
            z = extractIrisFeaturesLBP(slice);
            y = extractIrisFeaturesGLCM(slice);
%             x = extractIrisFeaturesGabor(temp);
    %         plot(abs(z));
            samples(sampleIndex).class = i; 
            samples(sampleIndex).label = k; 
            samples(sampleIndex).lbp = z;
            samples(sampleIndex).glcm = y;
%             samples(sampleIndex).gabor = x;
            sampleIndex = sampleIndex + 1;
            count = count + 1; 
        else
%             warningMessage = sprintf('Warning: image file does not exist:\n%s', filename);
%             uiwait(warndlg(warningMessage));
        end
        % BW = imbinarize(imageData);
        % imshow(imageData);
        x0 = randi([1 ssize]);
        y0 = randi([1 ssize]);
        
    end    
end
brodatz = samples;
end
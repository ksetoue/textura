function glcm = extractIrisFeaturesGLCM(im)
    g = graycomatrix(im,'Offset',[0 1; -1 1; -1 0; -1 -1],'Symmetric', true); 
%     meanMatrix = g(:,:,1) + g(:,:,2) + g(:,:,3) + g(:,:,4);
%     g = graycoprops(meanMatrix); 
    g = graycoprops(g); 
    glcm = [g.Contrast, g.Correlation, g.Energy, g.Homogeneity];
end
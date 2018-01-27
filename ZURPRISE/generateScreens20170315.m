screenDimsCm = [37 30]; %[width_cm heigh_cm]

pxW = 800;
pxH = 600;
screens(1) = vis.screen([0 0 20], -90, screenDimsCm, [0 0 pxW pxH]);        % left screen
screens(2) = vis.screen([0 0 18],  0 , screenDimsCm, [pxW 0 2*pxW pxH]);    % ahead screen
screens(3) = vis.screen([0 0 20],  90, screenDimsCm, [2*pxW  0 3*pxW pxH]); % right screen

rig = load('hardware.mat');
rig.screens = screens;
save('hardware.mat', '-struct', 'rig');
clear hardware screenDimsCm
screenDimsCm = [37 30]; %[width_cm heigh_cm]

screens(1) = vis.screen([0 0 17], -90, screenDimsCm, [0 0 1280 1024]);
screens(2) = vis.screen([0 0 23],  0 , screenDimsCm, [1280 0 2560 1024]);
screens(3) = vis.screen([0 0 17],  90, screenDimsCm, [2560 0 3840 1024]);

rig = load('hardware.mat');
rig.screens = screens;
save('hardware.mat', '-struct', 'rig');
clear hardware screenDimsCm
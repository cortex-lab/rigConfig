screenDimsCm = [20 15]; %[width_cm heigh_cm]

screens(1) = vis.screen([0 0 10], -90, screenDimsCm, [0 0 1024 768]);
screens(2) = vis.screen([0 0 10],  0 , screenDimsCm, [1024 0 2048 768]);
screens(3) = vis.screen([0 0 10],  90, screenDimsCm, [2048 0 3072 768]);

rig = load('hardware.mat');
rig.screens = screens;
save('hardware.mat', '-struct', 'rig');
clear hardware screenDimsCm
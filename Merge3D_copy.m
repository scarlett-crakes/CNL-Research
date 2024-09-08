clear variables; %close all; clc;
%% center to be merged
cx = fix(164/2);
cy = fix(233/2);
cz = fix(217/2);

center = [cx, cy cz];
model3D_new = zeros(center, 'uint8');
%% skin
nx_m = 16;
ny_m = 13;
nz_m = 12;
model = load('Hypophysis or Pituitary Gland_16x13x121.txt');
%disp(model);
% disp(size(model));
[dim1, dim2, dim3] = size(model);
fprintf('Dimensions of model: %d x %d x %d\n', dim1, dim2, dim3);
AT = reshape(model,ny_m,nz_m,nx_m);
[dim1, dim2, dim3] = size(AT);
fprintf('Dimensions of model: %d x %d x %d\n', dim1, dim2, dim3);
for i = 1:nx_m
    for j = 1:ny_m
        for k = 1:nz_m
            if AT(j, k, i) ~= 0
                model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
                    = AT(j, k, i);
            end
        end
    end
end
% disp(size(skin));
% model3D_new = skin;

% %% Adipose Tissue (AT)
% nx_m = 70;
% ny_m = 70;
% nz_m = 70;
% model = load('Pineal Body_70x70x70.txt');
% AT = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if AT(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = AT(j, k, i);
%             end
%         end
%     end
% end
% %% SAT
% nx_m = 310;
% ny_m = 450;
% nz_m = 398;
% model = load('Subcutaneous_Adipose_Tissue_310x450x398.txt');
% SAT = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if SAT(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = SAT(j, k, i);
%             end
%         end
%     end
% end
% %% Skull Outer Table (SOT)
% nx_m = 284;
% ny_m = 270;
% nz_m = 381;
% model = load('Skull_Outer_Table_284x270x381.txt');
% SOT = reshape(model,ny_m,nz_m,nx_m);
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if SOT(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = SOT(j, k, i);
%             end
%         end
%     end
% end
% %% Tendon Galea Aponeurotica (TGA)
% nx_m = 263;
% ny_m = 231;
% nz_m = 369;
% model = load('Tendon_Galea_Aponeurotica_263x231x369.txt');
% TGA = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if TGA(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = TGA(j, k, i);
%             end
%         end
%     end
% end
% %% Skull Diploe (SD)
% nx_m = 278;
% ny_m = 262;
% nz_m = 367;
% model = load('Skull_Diploe_278x262x367.txt');
% SD = reshape(model,ny_m,nz_m,nx_m);
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if SD(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = SD(j, k, i);
%             end
%         end
%     end
% end
% %% Skull Inner Table (SIT)
% nx_m = 278;
% ny_m = 265;
% nz_m = 359;
% model = load('Skull_Inner_Table_278x265x359.txt');
% SIT = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if SIT(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = SIT(j, k, i);
%             end
%         end
%     end
% end
% %% Dura
% nx_m = 273;
% ny_m = 439;
% nz_m = 350;
% model = load('Dura_273x439x350.txt');
% CSF = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if CSF(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = CSF(j, k, i);
%             end
%         end
%     end
% end
% %% Skull
% nx_m = 280;
% ny_m = 173;
% nz_m = 349;
% model = load('Skull_280x173x349.txt');
% skull = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if skull(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = skull(j, k, i);
%             end
%         end
%     end
% end
% %% CSF General
% nx_m = 269;
% ny_m = 437;
% nz_m = 346;
% model = load('CSF_General_269x437x346.txt');
% CSF = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if CSF(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = CSF(j, k, i);
%             end
%         end
%     end
% end
% %% Brain Gray Matter (BGM)
% nx_m = 269;
% ny_m = 229;
% nz_m = 345;
% model = load('Brain_Gray_Matter_269x229x345.txt');
% BGM = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if BGM(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = BGM(j, k, i);
%             end
%         end
%     end
% end
% %% Blood Veins
% nx_m = 268;
% ny_m = 437;
% nz_m = 339;
% model = load('Blood_Veins_268x437x339.txt');
% veins = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if veins(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = veins(j, k, i);
%             end
%         end
%     end
% end
% %% Brain White Matter (BWM)
% nx_m = 258;
% ny_m = 218;
% nz_m = 335;
% model = load('Brain_White_Matter_258x218x335.txt');
% BWM = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if BWM(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = BWM(j, k, i);
%             end
%         end
%     end
% end
% %% Blood Arteries
% nx_m = 262;
% ny_m = 413;
% nz_m = 242;
% model = load('Blood_Arteries_262x413x242.txt');
% arteries = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if arteries(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = arteries(j, k, i);
%             end
%         end
%     end
% end
% %% Air Internal Ethmoidal Sinus (ES)
% nx_m = 57;
% ny_m = 46;
% nz_m = 100;
% model = load('Air_Internal_Ethmoidal_Sinus_57x46x100.txt');
% ES = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if ES(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = ES(j, k, i);
%             end
%         end
%     end
% end
% %% midbrain
% nx_m = 59;
% ny_m = 38;
% nz_m = 55;
% model = load('midbrain_59x38x55.txt');
% midbrain = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if midbrain(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = midbrain(j, k, i);
%             end
%         end
%     end
% end
% %% putamen
% nx_m = 124;
% ny_m = 81;
% nz_m = 53;
% model = load('putamen_124x81x53.txt');
% putamen = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if putamen(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = putamen(j, k, i);
%             end
%         end
%     end
% end
% %% pons
% nx_m = 76;
% ny_m = 53;
% nz_m = 47;
% model = load('pons_76x53x47.txt');
% pons = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if pons(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = pons(j, k, i);
%             end
%         end
%     end
% end
% %% amygdala
% nx_m = 115;
% ny_m = 43;
% nz_m = 41;
% model = load('Amygdala_115x43x41.txt');
% AMY = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if AMY(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = AMY(j, k, i);
%             end
%         end
%     end
% end
% %% diencephalon
% nx_m = 76;
% ny_m = 49;
% nz_m = 41;
% model = load('Diencephalon_76x49x41.txt');
% dien = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if dien(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = dien(j, k, i);
%             end
%         end
%     end
% end
% %% CP
% nx_m = 107;
% ny_m = 36;
% nz_m = 40;
% model = load('CP_107x36x40.txt');
% CP = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if CP(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = CP(j, k, i);
%             end
%         end
%     end
% end
% %% CN
% nx_m = 67;
% ny_m = 48;
% nz_m = 38;
% model = load('CN_67x48x38.txt');
% CN = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if CN(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = CN(j, k, i);
%             end
%         end
%     end
% end
% %% GP
% nx_m = 97;
% ny_m = 55;
% nz_m = 36;
% model = load('GP_97x55x36.txt');
% GP = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if GP(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = GP(j, k, i);
%             end
%         end
%     end
% end
% %% accumbens
% nx_m = 54;
% ny_m = 36;
% nz_m = 31;
% model = load('Accumbens_54x36x31.txt');
% ACC = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if ACC(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = ACC(j, k, i);
%             end
%         end
%     end
% end
% %% ON
% nx_m = 94;
% ny_m = 71;
% nz_m = 23;
% model = load('ON_94x71x23.txt');
% ON = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if ON(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = ON(j, k, i);
%             end
%         end
%     end
% end
% %% OC
% nx_m = 52;
% ny_m = 36;
% nz_m = 23;
% model = load('OC_52x36x23.txt');
% OC = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if OC(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = OC(j, k, i);
%             end
%         end
%     end
% end
% %% MB
% nx_m = 19;
% ny_m = 13;
% nz_m = 10;
% model = load('MB_19x13x10.txt');
% MB = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if MB(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = MB(j, k, i);
%             end
%         end
%     end
% end
% %% hypothalamus
% nx_m = 25;
% ny_m = 21;
% nz_m = 9;
% model = load('hypothalamus_25x21x9.txt');
% hypo = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if hypo(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = hypo(j, k, i);
%             end
%         end
%     end
% end
%% cerebellum GM
% nx_m = 204;
% ny_m = 125;
% nz_m = 104;
% model = load('Cerebellum_GM_204x125x104.txt');
% CBM_GM = reshape(model,ny_m,nz_m,nx_m);
% 
%for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if CBM_GM(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = CBM_GM(j, k, i);
%             end
%         end
%     end
% end
% %% cerebellum WM
% nx_m = 183;
% ny_m = 118;
% nz_m = 89;
% model = load('Cerebellum_WM_183x118x89.txt');
% CBM_WM = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if CBM_WM(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = CBM_WM(j, k, i);
%             end
%         end
%     end
% end
% %% VGM
% nx_m = 28;
% ny_m = 76;
% nz_m = 83;
% model = load('VGM_28x76x83.txt');
% VGM = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if VGM(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = VGM(j, k, i);
%             end
%         end
%     end
% end
% %% VWM
% nx_m = 22;
% ny_m = 65;
% nz_m = 70;
% model = load('VWM_22x65x70.txt');
% VWM = reshape(model,ny_m,nz_m,nx_m);
% 
% for i = 1:nx_m
%     for j = 1:ny_m
%         for k = 1:nz_m
%             if VWM(j, k, i) ~= 0
%                 model3D_new(cy-fix(ny_m/2) + j, cz-fix(nz_m/2) + k, cx-fix(nx_m/2) + i)...
%                     = VWM(j, k, i);
%             end
%         end
%     end
% end

%%
% iz = 20;
% figure
% imagesc(squeeze(VTL(:,iz,:))); axis xy; axis equal tight; %colorbar;% caxis([0 cx2]);

%%
% model3D_new(:, 1:387, :) = model3D(:, 1:387, :); %remove extra part of the J electrode
%%
% % Where to plot 
% ix = 523;
% iy = 423;
% iz = 50;
% 
% %figure(); %cx2 = 10;
% %imagesc(squeeze(model3D_new(:,:,ix))); axis xy; axis equal tight; %colorbar;% caxis([0 cx2]);
% figure
% imagesc(squeeze(model3D_new(:,iz,:))); axis xy; axis equal tight; %colorbar;% caxis([0 cx2]);
% %figure
%imagesc((squeeze( model3D_new(iy,:,:) ))); axis xy; axis equal tight; %colorbar;% caxis([0 cx2]);
%% Save file
%dlmwrite('Head_NEW_219_245_304.model', reshape(model3D_new, 245*304, 219), 'delimiter',' ')
%dlmwrite('MatlabHead_NEW_159_124_112.model', reshape(model3D_new, 7*7, 7), 'delimiter',' ')
% title('<Model> Ring Stim1 - 1 mm Nasal Ground')
% saveas(gca, 'Model ring Stim - 1 mm Nasal Ground.jpg')
%% change to raw
% modelraw = permute(model3D_new, [3, 1, 2]);
% fid=fopen('Head_NEW_219_245_304.raw','w');
% Get the dimensions of model3D_new
% [dim1, dim2, dim3] = size(model3D_new);
% 
% % Print out the dimensions
% fprintf('Dimensions of model3D_new: %d x %d x %d\n', dim1, dim2, dim3);
% % fwrite(fid,modelraw,'uint8');
% % Assuming model3D_new is already defined
% dataType = class(model3D_new);

% Display the data type
% disp(['The data type of model3D_new is: ', dataType]);
modelraw = permute(model3D_new, [3, 1, 2]);
% 
% [dim1, dim2, dim3] = size(modelraw);
% fprintf('Dimensions of modelraw: %d x %d x %d\n', dim1, dim2, dim3);
% 
% disp(modelraw)
fid=fopen('MatlabCenterHead_NEW_159_124_112.raw', 'w');
fwrite(fid,modelraw,'uint8');



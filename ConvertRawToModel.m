
fid=fopen('MIDA_v1.raw', 'r');
rawmodel = fread(fid, 'uint8');
fclose(fid);
num = numel(rawmodel);


reshaped_model = reshape(rawmodel, [480, 480, 350]);
permuted_model = permute(reshaped_model, [2, 3, 1]);
disp(['Number of elements ', num2str(num)]);
dlmwrite('MIDA_v1.model', permuted_model, 'delimiter',' ');
%reshape(permuted_model, 480*480, 350)



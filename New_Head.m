function importfile(fileToRead)
%IMPORTFILE(FILETOREAD)
%  Imports data from the specified file
%  FILETOREAD: file to read

%  Auto-generated by MATLAB on 07-Jun-2024 12:37:00

% Import the file
newData1 = load('-mat', fileToRead);

% Create new variables in the base workspace from those fields.
vars = fieldnames(newData1);
for i = 1:length(vars)
    assignin('base', vars{i}, newData1.(vars{i}));
end
end

% Call the function when the script is executed
importfile('MIDA_v1.mat');
pathName = mfilename('fullpath');
addpath(pathName(1:strfind(pathName, 'install_avlie')-2))
savepath
clear pathName

disp('Do you want to run AVLie when Matlab starts? (Y) | (N)');
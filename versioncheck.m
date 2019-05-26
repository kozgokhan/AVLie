function versioncheck
    
    fid = fopen('versionInfo.ldb');
    verInfo = textscan(fid,'%f %s','Delimiter',',');
    fclose(fid);
    
    celldisp(verInfo)
    
    currentVer = verInfo{2}{1}; lastUpdate = verInfo{1};
    
    days = 10;
    if (now-lastUpdate)/(6*60*24) > days
        options = weboptions('ContentType','text');
        latestVersion = webread('https://raw.githubusercontent.com/kozgokhan/avlie/master/latestVersion',options);
        if strcmp(latestVersion(strfind(latestVersion,':')+2:strfind(latestVersion,':')+4),currentVer)
            disp('version guncel');
        else
            disp('guncelleme gerekli');
        end
    else
        disp(['sonraki guncelleme kontrolune: ', num2str(days-(now-lastUpdate)/(6*60*24)), ' gun kaldi.'])
    end
    
    
end
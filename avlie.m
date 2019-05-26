function avlie

fid = fopen('liebase.ldb');
allLies = textscan(fid, '%s %s %s', 'Delimiter',',');
fclose(fid);

lieNum = length(allLies{1,1});
randLie = round(rand(1)*(lieNum-1))+1;

textAreaLength = 80;
lieShift = round((textAreaLength - length(allLies{1,1}{randLie}))/2)-1;
if (lieShift*2 + length(allLies{1,1}{randLie})) > textAreaLength-2
   lieShiftLeft = lieShift-1;
else
    lieShiftLeft = lieShift;
end
fprintf('+%s+\n',repmat('-',1,textAreaLength));
fprintf('| %s%s%s |\n', repmat(' ',1,lieShiftLeft), allLies{1,1}{randLie}, repmat(' ',1,lieShift));
fprintf('| %72s %s |\n',allLies{1,2}{randLie}, repmat(' ', 1, 5));
fprintf('+%s+\n',repmat('-',1,80));

end
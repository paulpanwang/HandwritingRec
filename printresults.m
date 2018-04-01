str = [];
for i = 1:size(p,1)
    if p(i,2)==0
        str = [str sprintf('%1s',key(p(i,1)))];
    elseif p(i,2) == 1
        str = [str sprintf('%1s ',key(p(i,1)))];
    else
        str = [str sprintf('%1s\n',key(p(i,1)))];
    end
end
fprintf('%s\n',str);
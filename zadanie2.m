index2014 = find(data.year == 2014);
index2014_top10 = index2014(1:10);
nazwy_top10 = data.institution(index2014_top10);

i=0;
text = [];
for nazwa = transpose(nazwy_top10)
    i = i+1;
    text = [text sprintf('%d. %s\n', i, nazwa{1,1})];
end

disp(text);
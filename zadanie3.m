index2014 = find(data.year == 2014);
index2014_top10 = index2014(1:10);
nazwy_top10 = data.institution(index2014_top10);

id = fopen('ranking.txt', 'w');
i = 0;
for nazwa = transpose(nazwy_top10)
    i = i+1;
    fprintf(id, '%d. %s\n', i, nazwa{1,1});
end
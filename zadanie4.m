unikalne_panstwa = unique(data.country);

histogram = [];
for panstwo = transpose(unikalne_panstwa)
    index = find(data.year == 2013 & strcmp(data.country, panstwo) & data.world_rank <= 100);
    ilosc_szukanych_uczelni = numel(index);
    histogram = [histogram ilosc_szukanych_uczelni];
end

bar(histogram);
uchwyt_wykresu = gca();
uchwyt_wykresu.XTick = 1:numel(unikalne_panstwa);
uchwyt_wykresu.XTickLabel = unikalne_panstwa;
uchwyt_wykresu.XTickLabelRotation = 70;
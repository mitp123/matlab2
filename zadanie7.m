index_2014 = find(data.year == 2014);
publications_2014 = data.publications(index_2014);
influence_2014 = data.influence(index_2014);
world_rank_2014 = data.world_rank(index_2014);

fo = fit([publications_2014, influence_2014], world_rank_2014, 'poly22');

fprintf('p00: %.2d\n', fo.p00);
fprintf('p10: %.2d\n', fo.p10);
fprintf('p01: %.2d\n', fo.p01);
fprintf('p20: %.2d\n', fo.p20);
fprintf('p11: %.2d\n', fo.p11);
fprintf('p02: %.2d\n', fo.p02);

hold on;
scatter3(publications_2014, influence_2014, world_rank_2014);
plot(fo);

index_stanford = find(strcmp(data.institution, 'Stanford University') & data.year == 2015);
publications_stanford = data.publications(index_stanford);
influence_stanford = data.influence(index_stanford);

przewidywane = fo(publications_stanford,influence_stanford);
round(przewidywane, 0)
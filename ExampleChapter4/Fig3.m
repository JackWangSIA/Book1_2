% 孔直径
clear;clc;clf;
x1 = ones(1,24);
x2 = 2*ones(1,24);
y1 = [2.264 2.356 2.526 2.429 2.368 2.370 2.462 2.503 2.429 2.159 2.355 2.38 2.491 2.252 2.162 2.195 2.572 2.614 2.321 2.221 2.344 2.576 2.560 2.58];
y2 = [3.037 3.727 3.654 3.433 2.923 3.45 3.555 3.54 3.56 3.229 3.392 3.575 3.134 3.175 3.117 3.391 3.744 3.924 3.9 3.014 2.885 3.172 3.589 3.057];
y1=y1/23.4*1500;
y2=y2/23.4*1500;
p1 = swarmchart(x1,y1,50,[46 78 126]/255);
p1.XJitterWidth = 0.5;
p1.MarkerFaceColor = [46 78 126]/255;
p1.MarkerFaceAlpha = 0.4;
p1.MarkerEdgeColor = "none";
hold on
p2 = swarmchart(x2,y2,50,[124 24 35]/255);
p2.XJitterWidth = 0.5;
p2.MarkerFaceColor = [124 24 35]/255;
p2.MarkerFaceAlpha = 0.4;
p2.MarkerEdgeColor = "none";
%
pp1 = errorbar(x1(1),mean(y1),std(y1));
pp1.Color = [46 78 126]/255;
pp1.MarkerSize = 30;
pp1.LineWidth = 2.5;
pp1.Marker = ".";
pp1.CapSize = 18;
%
pp2 = errorbar(x2(1),mean(y2),std(y2));
pp2.Color = [124 24 35]/255;
pp2.MarkerSize = 30;
pp2.LineWidth = 2.5;
pp2.Marker = ".";
pp2.CapSize = 18;
%
ylim([105 295])
set(gca,'xtick',[],'xticklabel',[])
l = legend('Wet state','Freeze-dried state');
l.Location = "northwest";
l.FontName = 'Arial';
l.FontSize = 18;
%
a = gca;
daspect([1 150 1]);
box on
a.XColor = [0.1,0.1,0.1];
a.YColor = [0.1,0.1,0.1];
a.XLabel.String = 'Test status';
a.XLabel.FontSize = 16;
a.YLabel.String = 'Channel diameter [μm]';
a.YLabel.FontSize = 16;
print(gcf,'-dtiff','fig3_d.tiff', '-r300')
%
hold off
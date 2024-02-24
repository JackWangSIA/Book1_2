% 降解曲线
clear;clc;clf;
y = 0:8:96;
x1 = [100 88.2 76.3 68.2 62.4 57.6 53.9 50.1];
y1 = y(1:length(x1));
x2 = [100 89.4 80.4 74.2 69.3 65.4 61.5 57.3 54.2 50.3];
y2 = y(1:length(x2));
x3 = [100 91.2 84.1 76.8 73.8 68.2 65.1 62.3 58.8 56.7 54.6 52.3 50.5];
y3 = y(1:length(x3));
p1 = scatter(y1,x1);
p1.MarkerFaceColor = '#2E4E7E';
p1.MarkerEdgeColor = "none";
p1.MarkerFaceAlpha = 0.8;
hold on;
p2 = scatter(y2,x2);
p2.MarkerFaceColor = '#7C1823';
p2.MarkerEdgeColor = "none";
p2.MarkerFaceAlpha = 0.8;
p3 = scatter(y3,x3);
p3.MarkerFaceColor = '#057748';
p3.MarkerEdgeColor = "none";
p3.MarkerFaceAlpha = 0.8;
% % % func = @(a,x) 100*exp(-x/a);
% % % option=optimset('Display','iter','MaxFunEvals',2^12,'MaxIter',2^14,'TolX',1e-18,'TolFun',1e-30);
% % % a = lsqcurvefit(func, 50, y3, x3, [], [], option);
y = 0:4:96;
pp1 = plot(y,100*exp(-y/72.4));
pp1.LineWidth = 6;
pp1.Color = '#2E4E7E';
pp1.Color(4) = 0.2;
pp2 = plot(y,100*exp(-y/97));
pp2.LineWidth = 6;
pp2.Color = '#7C1823';
pp2.Color(4) = 0.2;
pp3 = plot(y,100*exp(-y/123));
pp3.LineWidth = 6;
pp3.Color = '#057748';
pp3.Color(4) = 0.2;
xlim([0 105])
ylim([45 115])
%
l = legend('4 %','5 %','6 %');
l.Location = "northeast";
l.FontName = 'Arial';
l.FontSize = 18;
%
a = gca;
daspect([1 1 1]);
box on
a.XColor = [0.1,0.1,0.1];
a.YColor = [0.1,0.1,0.1];
a.XLabel.String = 'Test time (h)';
a.XLabel.FontSize = 16;
a.YLabel.String = 'Relatively undegraded mass [%]';
a.YLabel.FontSize = 16;
print(gcf,'-dtiff','fig2_dTime.tiff', '-r300')

hold off
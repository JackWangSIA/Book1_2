% 拉伸模量
clear;clc;clf;
X = categorical({'4%','5%','6%'});
X = reordercats(X,{'4%','5%','6%'});
Y=[32.8 130.1 133.7];
p1 = bar(X,Y,0.4);
hold on;
p1.FaceColor = '#2E4E7E';
p1.EdgeColor = "none";
p1.FaceAlpha = 0.4;

e = [22 28 31];
xx = [1 1 nan 2 2 nan 3 3];
yy = [Y(1)-e(1) Y(1)+e(1) nan Y(2)-e(2) Y(2)+e(2) nan Y(3)-e(3) Y(3)+e(3)];
p2 = line(xx,yy,"LineWidth",5,"Color",'#057748');
p2.Color(4) = 0.6;


p3 = line([1 2 3],Y,"LineWidth",1,"Color",'#7c1823');
p3.LineStyle = "--";
p3.Color(4) = 0.5;


ylim([0 240])


l = legend('Mean modulus','Error bar');
l.Location = "north";
l.FontName = 'Arial';
l.FontSize = 18;
%
a = gca;
daspect([1 70 1]);
box on
a.XColor = [0.1,0.1,0.1];
a.YColor = [0.1,0.1,0.1];
a.XLabel.String = 'Collagen concentration (wt%)';
a.XLabel.FontSize = 16;
a.YLabel.String = 'Tensile modulus [kPa]';
a.YLabel.FontSize = 16;
print(gcf,'-dtiff','fig1_E.tiff', '-r300')

hold off



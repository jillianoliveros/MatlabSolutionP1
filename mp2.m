x1 = input('Enter x1: ');
y1 = input('Enter y1: ');
x2 = input('Enter x2: ');
y2 = input('Enter y2: ');
x3 = input('Enter x3: ');
y3 = input('Enter y3: ');
a = (x1-x2)^2+(y1-y2)^2;
b = (x2-x3)^2+(y2-y3)^2;
c = (x3-x1)^2+(y3-y1)^2;
d = 2*((b*c)+(c*a)+(a*b))-(a^2+b^2+c^2);
h = (b*(c+a-b)*x1+c*(a+b-c)*x2+a*(b+c-a)*x3)/d;
k = (b*(c+a-b)*y1+c*(a+b-c)*y2+a*(b+c-a)*y3)/d;
r = sqrt((h-x1)^2+(k-y1)^2);
d = [x1^(2)+y1^(2),y1,1; x2^(2)+y2^(2),y2,1;x3^(2)+y3^(2),y3,1];
e = [x1^(2)+y1^(2),x1,1;x2^(2)+y2^(2),x2,1;x3^(2)+y3^(2),x3,1];
f = [x1^(2)+y1^(2),x1,y1;x2^(2)+y2^(2),x2,y2;x3^(2)+y3^(2),x3,y3];
g = [x1,y1,1;x2,y2,1;x3,y3,1];
G = det(g);
dd = det(d)/G;
D = -1*dd;
E = det(e)/G;
ff = det(f)/G;
F = -1*ff;
fprintf('The central coordinates of the circle (h,k) are: \n h = %.2f \n k = %.2f \n',h,k)
fprintf('The radius of the circle is: r = %.2f\n',r)
fprintf('The vector [D,E,F], where D,E,F are the coefficients in the general equation of a circle are:\n D = %.2f \n E = %.2f \n F = %.2f \n',D,E,F)



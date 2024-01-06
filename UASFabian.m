clc
clear


%M Fabian Andriano
%112022033
%Kelas B Pemerograman Komputer
%UAS Matlab

%Soal 1
%NILAI MATRIKS:

A=[1 0 0; 3 1 2; 2 3 3]
B=[1 0 0; 4 2 3; 1 1 2]

%a) eigen matriks A & B
aA = eig(A)
aB = eig(B)

%b) singularitas matriks A & B
bA = svd(A)
bB = svd(B)

%c) matriks segitiga atas dari matriks A & B
cA = triu(A)
cB = triu(B)

%d) matriks segitiga bawah A & B
dA = tril(A)
dB = tril(B)

%e) nilai maximum matriks A & B
eA = max(max(A))
eB = max(max(B))

%f) nilai minimum matriks A & B
fA = min(min(A))
fB = min(min(B))

%g) jumlah kolom elemen matriks A & B
gA = length(A)
gB = length(B)

%h) diagonal matriks A & B
hA = diag(A)
hB = diag(B)

%Soal 2
%Selesaikan persamaan linier pada persamaan berikut:
%a) x+4y+7z=50
%b) 2x-y+4z=50
%c) 4x-2y+2z=50

%jawaban nomor 2
A=[1 4 7;2 -1 4;4 -2 2]
B=[050 ; 050 ;050]

%mencari nilai X Y Z
x = inv (A)*B

%Soal 3
% surf
figure(1)
x = -4 : 0.4 : 4
y = -4 : 0.4 : 4
[X,Y] = meshgrid(x,y)
Z = 2*sin(2*X).*cos(3*Y)
surf(X,Y,Z)
title("kurva surf")

% contour
figure(2)
x = -4 : 0.4 : 4;
y = -4 : 0.4 : 4;
[X,Y] = meshgrid(x,y);
Z = 2*sin(2*X).*cos(3*Y);
contour3(X,Y,Z);
title("kurva contour");


%Soal 3
% a) Soal 3 Bagian A
%Plot surf
figure(1)
x = -4 : 0.4 : 4;
y = -4 : 0.4 : 4;
[X,Y] = meshgrid(x,y);
Z = 2*sin(2*X).*cos(3*Y);
surf(X,Y,Z);
title("kurva surf");
xlabel ('x'), ylabel ('y'), zlabel ('z');

%Plot contour
figure(2)
x = -4 : 0.4 : 4;
y = -4 : 0.4 : 4;
[X,Y] = meshgrid(x,y);
Z = 2*sin(2*X).*cos(3*Y);
contour3(X,Y,Z);
title("kurva contour");
xlabel ('x'), ylabel ('y'), zlabel ('z');

%b) Soal 3 Bagian B
x = 0 : 0.5 : 5;
y1 = sin(2*x);
y2 = cos(6*x);
y3 = 2*cos(3*x).*sin(4*x);
y4 = 4*sin(6*x);
%cara 1
figure(3)
subplot (2,2,1)
plot (x,y1)
title ('sin(2*x)')
grid on
subplot (2,2,2)
plot (x,y2)
title ('cos(6*x)')
grid on
subplot (2,2,3)
plot (x,y3)
title ('2*cos(3*x).*sin(4*x)')
grid on
subplot (2,2,4)
plot (x,y4)
title ('4*sin(6*x)')
grid on

%cara 2
figure(4)
plot(x,y1,'b--',x,y2,'r-x',x,y3,'c-*',x,y4,'g-')
grid on

%cara 3
figure(5)
[X1,Y1] = meshgrid (x,y1)
[X2,Y2] = meshgrid (x,y2)
[X3,Y3] = meshgrid (x,y3)
[X4,Y4] = meshgrid (x,y4)
subplot (2,2,1)
surf(X1,Y1)
subplot (2,2,2)
surf(X2,Y2)
subplot (2,2,3)
surf(X3,Y3)
subplot (2,2,4)
surf(X4,Y4)

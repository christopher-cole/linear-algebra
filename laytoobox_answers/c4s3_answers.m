C4s3 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1
   X = ['The vector ', mat2str([v1 v2 v3]), ' clearly has linearly independent columns and there are pivots in every row. This means that the columns spans R^3.'];
   disp(X)
elseif ex==2
   X = ['The vector ', mat2str([v1 v2 v3]), ' clearly has linearly dependent columns and there are not pivots in every row. This means that the set does not form a basis. The columns of the original matrix do not span R^3'];
   disp(X)
elseif ex==3
   A = [v1 v2 v3];
   A1 = gauss(A, 1);
   A2 = replace(A1, 3, -1, 2);
   A3 = scale(A2, 2, 1/2);
   A4 = bgauss(A3, 2)
   X = ['The vector ', mat2str([v1 v2 v3]), ' clearly has linearly dependent columns and there are not pivots in every row. This means that the set does not form a basis and the columns does not span R^3.'];
   disp(X)
elseif ex==4
   A = [v1 v2 v3];
   A1 = swap(A, 1, 3);
   A2 = gauss(A1, 1);
   A3 = gauss(A2, 2);
   A4 = bgauss(A3, 2);
   A5 = scale(A4, 3, 1/24);
   A6 = bgauss(A5, 3)
   X = ['The vector ', mat2str([v1 v2 v3]), ' clearly has linearly independent columns and there are pivots in every row. This means that the set forms a basis and the columns span R^3. '];
   disp(X)
elseif ex==5
   A = [v1 v2 v3 v4];
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, 1/3);
   A3 = bgauss(A2, 2);
   A4 = scale(A3, 3, 1/5);
   A5 = bgauss(A4, 3)
   X = ['The vector ', mat2str([v1 v2 v3 v4]), ' clearly has linearly dependent columns and there are pivots in every row. This means that the columns span R^3.'];
   disp(X)
elseif ex==6
   X = ['The vector ', mat2str([v1 v2]), ' clearly has linearly independent columns and there are not pivots in every row. This means that the set does not form a basis, and that the columns do not span R^3.'];
   disp(X)
elseif ex==7
   X = ['The vector ', mat2str([v1 v2]), ' clearly has linearly independent columns and there are not pivots in every row. This means that the set does not form a basis, and that the columns do not span R^3.'];
   disp(X)
elseif ex==8
   A = [v1 v2 v3 v4];
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, 1/3);
   A3 = gauss(A2, 2);
   A4 = scale(A3, 3, -3/8);
   A5 = bgauss(A4, 3)
   X = ['The vector ', mat2str([v1 v2 v3 v4]), ' clearly has linearly dependent columns and there are pivots in every row. This means that the set forms a basis, and that the columns span R^3.'];
   disp(X)
elseif ex==9
   M1 = [M zeros(3,1)];
   M2 = gauss(M1, 1);
   M3 = gauss(M2, 2)
   X = ['x1 = ', num2str(-1*M3(10)), 'x4 + ',num2str(-1*M3(7)), 'x3 and x2 = ', num2str(-1*M3(11)), 'x4 + ',num2str(-1*M3(8)), 'x3.'];
   disp(X)
   Y = ['The set {[',num2str(-1*M3(7)),';',num2str(-1*M3(8)),';',num2str(1),';',num2str(0) '], [',num2str(-1*M3(10)),';',num2str(-1*M3(11)),';',num2str(0),';',num2str(1),']} is the Null space.'];
   disp(Y)
elseif ex==10
   M1 = [M zeros(3,1)];
   M2 = gauss(M1, 1);
   M3 = gauss(M2, 2);
   M4 = bgauss(M3, 3)
   X = ['x1 = ', num2str(-1*M4(7)), 'x3 + ',num2str(-1*M3(13)), 'x5 and x2 = ', num2str(-1*M3(8)), 'x3 + ',num2str(-1*M3(14)), 'x5 and x4 = ',num2str(-1*M3(15)),'x5.'];
   disp(X)
   Y = ['The set {[',num2str(-1*M4(7)),';',num2str(-1*M4(8)),';',num2str(1),';',num2str(0),';',num2str(0), '], [',num2str(-1*M4(13)),';',num2str(-1*M4(14)),';',num2str(0),';',num2str(0),';',num2str(1),']} is the Null space.'];
   disp(Y)  
elseif ex==13
   B1 = scale(B, 2, 1/2)
   X = ['There are two pivot columns, which are the first two columns of A, so Col(A) = ',mat2str([A(:,1) A(:,2)])];
   disp(X)
   Y = ['x1 = ', num2str(-1*B1(7)), 'x3 + ', num2str(-1*B1(10)), 'x4 and x2 = ', num2str(-1*B1(8)), 'x3 + ', num2str(-1*B1(11)),'x4'];
   disp(Y)
   Z = ['Nul(A) = {[', num2str(-1*B1(7)), ';', num2str(-1*B1(8)),';' num2str(1),';',num2str(0),'], [',num2str(-1*B1(10)),';',num2str(-1*B1(11)),';',num2str(0),';',num2str(1),']}'];
   disp(Z)
elseif ex==14
   B1 = scale(B, 2, 1/5);
   B2 = scale(B1, 3, -1/9);
   B3 = bgauss(B2, 3)
   X = ['There are three pivot columns, which are the odd numbered columns, so Col(A) = ',mat2str([A(:,1) A(:,3) A(:,5)])];
   disp(X)
   Y = ['x1 = ', num2str(-1*B3(5)), 'x2 + ', num2str(-1*B1(13)), 'x4 and x3 = ', num2str(-1*B1(14)), 'x4 and x5 = ', num2str(0)];
   disp(Y)
   Z = ['Nul(A) = {[', num2str(-1*B3(5)), ';', num2str(1),';' num2str(0),';',num2str(0),';',num2str(0),'], [',num2str(-1*B1(13)),';',num2str(-1*B1(14)),';',num2str(0),';',num2str(1),';',num2str(0),']}'];
   disp(Z)
elseif ex==15
   A = [v1 v2 v3 v4 v5];
   A1 = gauss(A,1);
   A2 = gauss(A1, 2);
   A3 = gauss(A2, 3);
   A4 = bgauss(A3, 3)
   X = ['The columns v1, v2, and v4 form a basis, ', mat2str([v1 v2 v4])];
   disp(X)
elseif ex==16
   A = [v1 v2 v3 v4 v5];
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2);
   A3 = gauss(A2, 3);
   A4 = bgauss(A3, 2);
   A5 = bgauss(A4, 3)
   X = ['The columns v1, v2, and v3 form a basis, ', mat2str([v1 v2 v3])];
   disp(X)
elseif ex==17
   A = [v1 v2 v3 v4 v5];
   A1 = scale(A, 1, 1/8);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 2);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, 1/5);
   A6 = gauss(A5, 3);
   A7 = bgauss(A6, 2);
   A8 = bgauss(A7, 3)
   X = ['The columns v1, v2, and v3 form a basis, ', mat2str([v1 v2 v3])];
   disp(X)
elseif ex==18
   A = [v1 v2 v3 v4 v5];
   A1 = scale(A, 1, 1/8);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 2);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, 1/5);
   A6 = gauss(A5, 3);
   A7 = bgauss(A6, 2);
   A8 = bgauss(A7, 3)
   X = ['The columns v1, v2, and v4 form a basis, ', mat2str([v1 v2 v4])];
   disp(X)
elseif ex==19
   X = ['The sets {',mat2str(v1),', ',mat2str(v3),'}, {',mat2str(v2), ', ',mat2str(v3),'} , {',mat2str(v1),', ',mat2str(v2),'} all work.'];
   disp(X)
elseif ex==20
   X = ['The sets {',mat2str(v1),', ',mat2str(v3),'}, {',mat2str(v2), ', ',mat2str(v3),'} , {',mat2str(v1),', ',mat2str(v2),'} all work.'];
   disp(X) 
elseif ex==36
   X = [mat2str([u1 u2 v1]), ' works'];
   disp(X)
else
   disp('No solution for this exercise in Section 4.3.')
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
C2s3 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1
   A1 = scale(A, 2, -1/3);
   A2 = swap(A1, 1, 2);
   A3 = gauss(A2, 1)
   disp('This is invertible') 
elseif ex==2
   A1 = replace(A,2, 3/2, 1)
   disp('No pivot in every row, so it isn''t invertible') 
elseif ex==3
   A1 = scale(A, 1, 1/5);
   A2 = gauss(A1, 1)
   disp('This is invertble.') 
elseif ex==4 
   disp('No pivot in every row, so it isn''t invertible')
elseif ex==5 
   A1 = swap(A, 1, 2);
   A2 = gauss(A1, 1);
   A3 = replace(A2, 3, 3, 2)
   disp('No pivot in every row, so it isn''t invertible')
elseif ex==6 
   A1 = gauss(A, 1);
   A2 = replace(A1, 3, 3, 2)
   disp('No pivot in every row, so it isn''t invertible')
elseif ex==7 
   A1 = scale(A, 1, -1);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -1/4);
   A4 = gauss(A3, 2)
   disp('There''s a pivot in every row, so it''s invertible')
elseif ex==8
   disp('This is invertble, you can tell by inspection that we will have pivots in every row.') 
elseif ex==9 | ex==42
   A1 = scale(A, 1, 1/4);
   A2 = gauss(A1, 1);
   A3 = gauss(A2, 2);
   A4 = scale(A3, 3, 4/99);
   A5 = gauss(A4, 3);
   A6 = bgauss(A5, 3)
   disp('The matrix is invertible. It agrees at about 9-10 digits')
elseif ex==10 | ex==43
   A1 = scale(A, 1, 1/5);
   A2 = scale(A1, 2, 5/2);
   A3 = scale(A2, 2, 5/2);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = swap(A5, 3, 4)
   disp('The matrix is invertible. It agrees at about 9-10 digits')
elseif ex==33
   M1 = scale(M, 1, -1/5);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 5);
   M4 = bgauss(M3, 2);
   X = ['The inverse of the matrix is ', mat2str(M4(:,[3 4]))];
   disp(X)
elseif ex==34
   M1 = scale(M, 1, 1/6);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 3);
   M4 = bgauss(M3, 2);
   X = ['The inverse of the matrix is ', mat2str(M4(:,[3 4]))];
   disp(X)
elseif ex==41
   M = [A b1]
   M1 = scale(M, 1, 2/9);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -450);
   M4 = bgauss(M3, 2)
   N1 = scale(N, 1, 2/9);
   N2 = gauss(N1, 1);
   N3 = scale(N2, 2, -450);
   N4 = bgauss(N3, 2)
   X = ['The solution for the first matrix is ', mat2str(M4(:, 3)), ' and the second solution is ', mat2str(N4(:, 3))];
   disp('The error for the first variable is 26% and the error for the second variable is 308%')
   Y = ['The condition is ', num2str(cond(A))];
   disp(Y)
elseif ex==44
   M = [A [0;0;0;0;1]]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, 12);
   M3 = gauss(M2, 2);
   M4 = bgauss(M3, 2);
   M5 = scale(M4, 3, 180);
   M6 = gauss(M5, 3);
   M7 = bgauss(M6, 3);
   M8 = scale(M7, 4, 2800);
   M9 = gauss(M8, 4);
   M10 = bgauss(M9, 4);
   M11 = scale(M10, 5, 44100);
   M12 = bgauss(M11, 5);
   X = ['The column is equal to ', mat2str(M12(:, 6))];
   disp(X)
elseif ex==45
   X = ['A * the inverse of A is equal to ', mat2str(A*inv(A))];
   disp(X)
else 
   disp ('No solution for this exercise in Section 2.3.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
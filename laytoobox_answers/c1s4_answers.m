C1s4 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1 || ex==2
   X = size(A);
   Y = size(b);
   Z = ['This product is undefined, we cannot multiply a ', num2str(X(1)), 'x', num2str(X(2)), ' matrix with a ', num2str(Y(1)), 'x', num2str(Y(2)), ' matrix. The number of columns of the first matrix and the number of rows of the second matrix must be equal.'];
   disp(Z)
elseif ex==3
   X = ['= ', num2str(b(1)), mat2str(A(:,1)), num2str(b(2)), mat2str(A(:,2))];
   Y = ['= ', mat2str(b(1)*A(:,1)), mat2str(b(2)*A(:,2))];
   Z = ['= ', mat2str(b(1)*A(:,1)+b(2)*A(:,2))];
   disp(X)
   disp(Y)
   disp(Z)
elseif ex==4
   X = ['= ', num2str(b(1)), mat2str(A(:,1)), ' + ',num2str(b(2)), mat2str(A(:,2)), ' + ',num2str(b(3)), mat2str(A(:,3))];
   Y = ['= ', mat2str(b(1)*A(:,1)), ' + ', mat2str(b(2)*A(:,2)), ' + ',mat2str(b(3)*A(:,3))];
   Z = ['= ', mat2str(b(1)*A(:,1)+b(2)*A(:,2)+b(3)*A(:,3))];
   disp(X)
   disp(Y)
   disp(Z)
elseif ex==11
   M = [A b]
   M1 = gauss(M, 1);
   M2 = scale(M1, 3, 1/5);
   M3 = bgauss(M2, 2);
   M4 = bgauss(M3, 3);
   M4
   X = [mat2str(M4(1, end)), '*', mat2str(M(:, 1)), mat2str(M4(2, end)), '*', mat2str(M(:, 2)), '+', mat2str(M4(end, end)), '*', mat2str(M(:, 3)), ' = ', mat2str(b) ];
   disp(X)
elseif ex==12 
   M = [A b]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, 1/5);
   M3 = gauss(M2, 2);
   M4 = bgauss(M3, 2);
   M5 = scale(M4, 3, -1/2);
   M6 = bgauss(M5, 3);
   M6
   X = [mat2str(M6(1, end)), '*', mat2str(M(:, 1)), mat2str(M6(2, end)), '*', mat2str(M(:, 2)), '+', mat2str(M6(end, end)), '*', mat2str(M(:, 3)), ' = ', mat2str(b) ];
   disp(X)
elseif ex==13
   M = [A u];
   M1 = swap(M, 1, 3);
   M2 = gauss(M1, 1);
   echo on
   M3 = replace(M2, 3, 1, 2);
   echo off
   M4 = scale(M3, 2, 1/8);
   M5 = bgauss(M4, 2);
   M5
   disp('u is in the plane in R3. Use weights of 5/2 and 3/2 and you can produce vector u from the columns of A')
elseif ex==14
   M = [A u];
   M1 = swap(M, 1, 3);
   M2 = gauss(M1, 1);
   M3 = gauss(M2, 2);
   M3
   disp('0 does not equal 29, therefore, vector u is not a solution')
elseif ex==17 
    A1 = gauss(A, 1);
    A2 = scale(A1, 2, 1/2);
    A3 = gauss(A2, 2);
    A4 = swap(A3, 3, 4);
    A5 = bgauss(A4,2);
    A6 = scale(A5, 3, 1/5);
    A7 = bgauss(A6, 3);
    A7
    disp('There are three pivot positions. No, there is no solution, as there exists a bad row.')
elseif ex==18 
    B1 = gauss(B, 1);
    B2 = gauss(B1, 2);
    B3 = bgauss(B2, 2);
    B4 = swap(B3, 3, 4);
    B5 = scale(B4, 3, -1/7);
    B6 = bgauss(B5, 3);
    B6
    disp('No, and the columns cannot span R3. This is because of the bad row')
elseif ex==19 
   disp('No, and the columns cannot span R4. This is because of the bad row')
elseif ex==20 
   disp('No, there is no solution and the columns do not span R4')
elseif ex==21
   M = [v1 v2 v3]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, -1);
   M3 = gauss(M2, 2);
   M4 = gauss(M3, 3);
   M5 = bgauss(M4, 3);
   M5
   disp('Does not span R4, bad row')
elseif ex==22     
   M = [v1 v2 v3]
   M1 = swap(M, 1, 3);
   M2 = scale(M1, 1, -1/2);
   M3 = scale(M2, 2, -1/3);
   M4 = bgauss(M3, 2);
   M5 = scale(M4, 3, 1/4);
   M6 = bgauss(M5, 3);
   M6
   disp('The set containing the three vectors does span R3. THis is because there is a pivot position in every row')
elseif ex==37
   A1 = scale(A, 1, 1/7);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -7/11);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = scale(A5, 3, 11/50);
   A7 = bgauss(A6, 3);
   A7
   disp('There are not pivot positions in every row, therefore, the columns do not span R4')
elseif ex==38
   A1 = scale(A, 1, 1/5);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 5/2);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = scale(A5, 3, 1/3);
   A7 = bgauss(A6, 3);
   A7
   disp('There are not pivot positions in every row, therefore, the columns do not span R4')
elseif ex==39 
   A1 = scale(A, 1, 1/12);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -4/5);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = swap(A5, 3, 4);
   A7 = scale(A6, 3, 5/28);
   A8 = bgauss(A7, 3);
   A9 = scale(A8, 4, -1/2);
   A10 = bgauss(A9, 4);
   A10
   disp('There are pivot positions in every row, therefore, the columns span R4')
elseif ex==40 
   A1 = scale(A, 1, 1/8);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 8/13);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = swap(A5, 3, 4);
   A7 = scale(A6, 3, 1/6);
   A8 = scale(A7, 4, -1/12);
   A9 = bgauss(A8, 4);
   A10 = bgauss(A9, 3);
   A10
   disp('There are pivot positions in every row, therefore, the columns span R4')
elseif ex==41
   disp('Column 4 can be removed from the matrix in problem 39, and the set will still span R4')
elseif ex==42
   disp('Column 3 can be removed from the matrix in problem 39, and the set will still span R4')
else 
   disp ('No solution for this exercise in Section 1.4.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
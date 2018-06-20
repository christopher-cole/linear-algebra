C4s2 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1
   M = [A w]
   M1 = scale(M, 1, 1/3);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 1/8);
   M4 = gauss(M3, 2)
   disp('We have a bad row, meaning only the trivial solution works and that w is in Nul(A)')
elseif ex==2
   M = [A w]
   M1 = scale(M, 1, 1/5);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -5/158);
   M4 = gauss(M3, 2)
   disp('We have a bad row, meaning only the trivial solution works and that w is in Nul(A)') 
elseif ex==3
   A1 = bgauss(A, 2)
   X = ['x1 = ', num2str(-1*A1(5)), 'x3 + ', num2str(-1*A1(7)), 'x4 and x2 = ', num2str(-1*A1(6)), 'x3 + ',num2str(-1*A1(8)), 'x4. x3 and x4 are free variables'];
   disp(X)
elseif ex==4
   A1 = scale(A, 2, 1/2);
   A2 = bgauss(A1, 2)
   X = ['x1 = ', num2str(-1*A1(3)), 'x2 and ', 'x3 = ', num2str(-1*A1(8)), '. x2 is a free variable'];
   disp(X)
elseif ex==5
   X = ['x1 = ', num2str(-1*A(4)), 'x2 + ', num2str(-1*A(10)), 'x4. x3 = ', num2str(-1*A(11)), 'x4 and x4 is free and x5 = 0.'];
   disp(X)
elseif ex==6
   X = ['x1 = ', num2str(-1*A1(7)), 'x3 + ', num2str(-1*A1(10)), 'x4 + ', num2str(-1*A1(13)), 'x5. x2 = ', num2str(-1*A1(8)), 'x3 + ', num2str(-1*A1(11)), 'x4.'];
   disp(X)
elseif ex==17 | ex==18 | ex == 19 | ex==20
   [x, y] = size(A);
   X = ['Nul(A) is a subspace of R', num2str(x), ' and Col(A) is a subspace of R', num2str(y) '.'];
   disp(X)
elseif ex==21
    X = ['The matrix ', mat2str([3 3 3;1 1 1]), ' is in Nul(A) since ', mat2str(A), ' * ', mat2str([3 3 3;1 1 1]), ' = 0 and the matrices ',mat2str(A(:,1)), ' and ',mat2str(A(:,2)), ' are in Col(A).'];
    disp(X)
elseif ex==22
    X = ['The matrix ', mat2str([4 4;2 2;-2 -2; -3 -3]), ' is in Nul(A) since ', mat2str(A), ' * ', mat2str([4 4;2 2;-2 -2; -3 -3]), ' = 0 and the matrices ',mat2str(A(:,1)), ', ',mat2str(A(:,2)),', ', mat2str(A(:,3)),' and ', mat2str(A(:,4)), ' are in Col(A).'];
    disp(X)
elseif ex==23
   M = [A w]
   M1 = scale(M, 1, -1/6);
   M2 = gauss(M1, 1)
   X = ['A*w = 0, so w is in Nul(A). w is also in Col(A), since x1 = ', num2str(M2(5)), ' + ', num2str(-1*M2(3)), 'x2.'];
   disp(X)
elseif ex==24
   M = [A w] 
   M1 = scale(M, 1, -1/8);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 2/5);
   M4 = gauss(M3, 2);
   M5 = bgauss(M4, 2);
   X = ['A*w = 0, so w is in Nul(A). w is also in Col(A), since x1 = ', num2str(M5(10)), ' + ', num2str(-1*M5(7)), 'x3 and x2 = ', num2str(M5(11)), ' + ', num2str(-1*M5(8)), 'x3.'];
elseif ex==37
   M = [A w]
   M1 = scale(M, 1, 1/7);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 7/23);
   M4 = gauss(M3, 2);
   M5 = scale(M4, 3, 23/-95);
   M6 = gauss(M5, 3);
   M7 = bgauss(M6, 2);
   M8 = bgauss(M7, 3)
   X = ['A*w does not equal 0, so w is not in Nul(A). w is in Col(A) though, as x1 = ',num2str(M8(17)), ' + ', num2str(-1*M8(13)), 'x4, and x2 = ', num2str(M8(18)), ' + ', num2str(-1*M8(14)), 'x4 and x3 = ', num2str(M8(19)), ' + ', num2str(-1*M8(15)), 'x4.'];
   disp(X)
elseif ex==38
   M = [A w]
   M1 = scale(M, 1, -1/8);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 8/-9);
   M4 = gauss(M3, 2);
   M5 = scale(M4, 3, 9);
   M6 = gauss(M5, 3);
   M7 = bgauss(M6, 2);
   M8 = bgauss(M7, 3)
   X = ['A*w = 0, so w is in Nul(A). w is in Col(A) though, as x1 = ',num2str(M8(17)), ' + ', num2str(-1*M8(9)), 'x3, and x2 = ', num2str(M8(18)), ' + ', num2str(-1*M8(10)), 'x3 and x4 = ', num2str(M8(19))];
   disp(X)
elseif ex==39
   B = [A(:,1) A(:,2) A(:,4)]
   A1 = scale(A, 1, 1/5);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 5/12);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, -1/6);
   A6 = gauss(A5, 3);
   A7 = bgauss(A6, 2);
   A8 = bgauss(A7, 3)
   X = ['b. x1 = ', num2str(-1*A8(17)), 'x5 + ', num2str(-1*A8(9)), 'x3 and x2 = ', num2str(-1*A8(18)), 'x5 + ', num2str(-1*A8(10)), ' and x4 = ', num2str(-1*A8(19)), 'x5. x5 and x3 are free variables'];;
   disp('a. You can use the columns of A with weights to produce any of the columns, so it works.')
   disp(X)
   disp('c. Since the columns of A are linearly dependent, there is no onto or one to one transformation')
elseif ex==40
   A = [v1 v2 v3 v4]
   A1 = scale(A, 1, 1/5);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 5/12);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, 1/4);
   A6 = bgauss(A5, 2);
   A7 = bgauss(A6, 3)
   X = [' The weights are ', mat2str(A7(:,end))];
   disp(X)   
else
   disp('No solution for this exercise in Section 4.2.')
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
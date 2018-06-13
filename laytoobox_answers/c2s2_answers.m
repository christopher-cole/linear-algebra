C2s2 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1||ex==2||ex==3||ex==4
   inv(A)
elseif ex==5
   C = inv(A);
   M = [C b]
   M1 = scale(M, 1, 1/2);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 4);
   M4 = bgauss(M3, 2);
   M4
   X = ['x equals ', mat2str(M4(:,end))];
   disp(X)
elseif ex==6
   C = inv(A);
   M = [C b]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, -5);
   M3 = bgauss(M2, 2);
   M3
   X = ['x equals ', mat2str(M3(:,end))];
   disp(X) 
elseif ex==7
   C = inv(A)
   X = ['We can see that the the inverse of A multiplied by each column b equals ' mat2str(C*b1),mat2str(C*b2),mat2str(C*b3),mat2str(C*b4), '. We can do this in different ways too, by row reducing a matrix [A b1 b2 b3 b4].'];
   disp(X)
   M = [A b1 b2 b3 b4]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, 1/2);
   M3 = bgauss(M2, 2);
   M3
elseif ex==29
   M = [A eye(2)]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, -1);
   M3 = bgauss(M2, 2);
   M3
   X = ['The inverse is equal to ', mat2str(M3(:, [3 4]))];
   disp(X)
elseif ex==30
   M = [A eye(2)]
   M1 = scale(M, 1, 1/5);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -1);
   M4 = bgauss(M3, 2);
   M4
   X = ['The inverse is equal to ', mat2str(M4(:, [3 4]))];
   disp(X)
elseif ex==31 
   M = [A eye(3)]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = scale(M2, 3, 1/2);
   M4 = bgauss(M3, 3);
   M4
   X = ['The inverse is equal to ', mat2str(M4(:, [4:6]))];
   disp(X)
elseif ex==32 
   M = [A eye(3)]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M3
   disp('There is no inverse for this matrix, as we can''t recreate the identity matrix on the lefthand side') 
elseif ex==33 
   M = [A eye(3)]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   N = [C eye(4)]
   N1 = gauss(N, 1);
   N2 = gauss(N1, 2);
   N3 = gauss(N2, 3);
   X = ['The inverse of A is ', mat2str(M2(:,[4:6])), ' and the inverse of C is ', mat2str(N3(:, [5:8])), '. The connection between the inverses is the answer will be the main diagonal be all 1''s, and the diagonal directly below it will be all negative 1''s, while every other entry will be zero'];
   disp(X)
elseif ex==34
   M = [A eye(3)]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, 1/2);
   M3 = gauss(M2, 2);
   M4 = scale(M3, 3, 1/3);
   N = [C eye(4)]
   N1 = gauss(N, 1);
   N2 = scale(N1, 2, 1/2);
   N3 = gauss(N2, 2);
   N4 = scale(N3, 3, 1/3);
   N5 = gauss(N4, 3);
   N6 = scale(N5, 4, 1/4);
   X = ['The inverse of A is ', mat2str(M3(:,[4:6])), ' and the inverse of C is ', mat2str(N6(:, [5:8])), '. The connection between the inverses is the answer will be the main diagonal be 1/1 1/2 1/3 1/4 and so forth, and the diagonal directly below it will be negative 1/2 1/3 1/4 etc., while every other entry will be zero'];
   disp(X)
elseif ex==35
   M = [A [0;0;1]];
   M1 = swap(M, 1, 3);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -1); 
   M4 = gauss(M3, 2); 
   M5 = bgauss(M4, 2);
   M6 = bgauss(M5, 3);
   X = ['The third column of the inverse is ', mat2str(M6(:,end))];
   disp(X)
elseif ex==36
   M = [A [0;1;0] [0;0;1]];
   M1 = scale(M, 1, -1/25);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 25/-414); 
   M4 = gauss(M3, 2); 
   M5 = bgauss(M4, 2);
   M6 = scale(M5, 3, -69);
   M7 = bgauss(M6, 3);
   X = ['The second and third columns of the inverse are ', mat2str(M7(:,[4 5]))];
   disp(X) 
elseif ex==37
   C = [1 1 -1; -1 1 0]
   disp('I did this by trial and error on paper')
elseif ex==38
   D = [1 0; 0 0; 0 0; 0 1]
   disp('I did this by trial and error on paper, there is no C such that C*A = eye(4).')
elseif ex==39
   A = D*f;
   X = ['The deflections are ', num2str(A(1)), ', ',num2str(A(2)),' and ',num2str(A(3)), ' respectively.'];
   disp(X)
elseif ex==40
   M = [D eye(3)]
   M1 = scale(M, 1, 200);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, 625/2);
   M4 = gauss(M3, 2);
   M5 = bgauss(M4, 2);
   M6 = scale(M5, 3, 250);
   M7 = bgauss(M6, 3);
   E = M7(:, 4:6)
   F = E*y;
   X = ['The forces needed are ', num2str(F(1)), ', ',num2str(F(2)),' and ',num2str(F(3)), ' respectively.'];
   disp(X)
elseif ex==41
   A = D*y;
   X = ['The deflections are ', num2str(A(1)), ', ',num2str(A(2)),', ',num2str(A(3)),' and ',num2str(A(4)), ' respectively.'];
   disp(X)
elseif ex==42
   X = ['When using the deflection of 1 instead of 6/25, we can multiply our answer by 6/25 and get the output we would if we kept it at 6/25'];
   disp(X)
else 
   disp ('No solution for this exercise in Section 2.2.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
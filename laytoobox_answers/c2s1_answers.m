C2s1 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1
   X = ['-2A = ', mat2str(-2*A), ' and B - 2A = ', mat2str(B -2*A), ' and AC = undefined', ' and CD = ' mat2str(C*D)];
   disp(X)
elseif ex==2
   X = ['A + 3B = ', mat2str(A+3*B), ' and 2C - 3E = ', mat2str(2*C - 3*E), ' and DB = ',' and EC = undefined'];
   disp(X)
elseif ex==3
   X = ['3I - A = ', mat2str(3*eye(2)-A), ' and 3I*A = ', mat2str(3*eye(2)*A)];
   disp(X)
elseif ex==4
   X = ['A - 5I = ', mat2str(A-5*eye(3)), ' and 5I*A = ', mat2str(5*eye(3)*A)];
   disp(X)
elseif ex==5 || ex==6
   X = ['A * B = ',mat2str(A*B), ' which is the same as ', mat2str([A*B(:,1) A*B(:,2)])];
   disp(X)
elseif ex==10
   X = ['A * B = ', mat2str(A*B), ' B * C = ', mat2str(A*C), ' but clearly B does not equal C as B = ', mat2str(B), ' and C = ', mat2str(C)];
   disp(X)
elseif ex==11
   disp('In order to find a matrix B such that AB = BA, we have to do some arithmetic, I will find a matrix B such that A*B = I')
   M = [A eye(3)]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M4 = scale(M3, 3, -1/2);
   M5 = bgauss(M4, 3);
   M5
   B = M5(:, 4:6);
   X = ['A*B = ', mat2str(A*B), 'and B*A = ', mat2str(B*A), ' they are equal to each other and B is not the identity or zero matrix.'];
   disp(X)
elseif ex==12
   B = [2 4; 1 2];
   X = ['A*B = ', mat2str(A*B),'The matrix ', mat2str(B), 'works for this problem, I solved it by inspection though, when there should be a better way to go about it.'];
   disp(X)
elseif ex==17
   B = [7 -8 1; 4 -5 1]
   X = ['I did this problem on paper, B = ', mat2str(B), ' while A*B = ', mat2str(A*B) ' which is equal to ', mat2str(AB)];
   disp(X)
elseif ex==27
   disp('I did this on paper.')
elseif ex==39
   X = ['S = ',mat2str(S), ' S^2 = ',mat2str(S^2),' S^3 = ',mat2str(S^3), ' S^4 = ',mat2str(S^4),' S^5 = ',mat2str(S^5)];
   disp(X)
elseif ex==40
   X = ['A^5 = ' mat2str(A^5),' A^10 = ' mat2str(A^10),' A^20 = ' mat2str(A^20),'A^30 = ' mat2str(A^30)];
   disp(X)
   disp('The matrix approaches a matrix of all values being equal to 1/3')
else 
   disp ('No solution for this exercise in Section 2.1.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
C4s5 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==10
   A = [v1 v2 v3]
   A1 = scale(A, 1, 1/2);
   A2 = gauss(A1, 1)
   disp('The matrix has two pivot columns and therefore the dimension is 2')
elseif ex==11
   A = [v1 v2 v3 v4]
   A = ref(A)
   disp('The matrix has two pivot columns and therefore the dimension is 2')
elseif ex==12
   A = [v1 v2 v3 v4]
   A = ref(A)
   disp('The matrix has three pivot columns and therefore the dimension is 3')
elseif ex==13
   A = ref(A)
   disp('A has three pivot columns so the dimenson of col(A) = 3, and the dimenson of nul(A) = 2 since there are two free variables')
elseif ex==14
   A = ref(A)
   disp('A has three pivot columns so the dimenson of col(A) = 3, and the dimenson of nul(A) = 3 since there are three free variables')
elseif ex==15
   A = ref(A)
   disp('A has two pivot columns so the dimenson of col(A) = 2, and the dimenson of nul(A) = 2 since there are two free variables')
elseif ex==16
   A = ref(A)
   disp('A has two pivot columns so the dimenson of col(A) = 2, and the dimenson of nul(A) = 0 since there are zero free variables')
elseif ex==17
   A = ref(A)
   disp('A has three pivot columns so the dimenson of col(A) = 3, and the dimenson of nul(A) = 0 since there are zero free variables') 
elseif ex==18
   A = ref(A)
   disp('A has two pivot columns so the dimenson of col(A) = 2, and the dimenson of nul(A) = 1 since there are one free variable')
elseif ex==33
   A = eye(5);
   e1 = A(:,1);
   e2 = A(:,2);
   e3 = A(:,3);
   B = [v1 v2 v3 e1 e2 e3]
   B = ref(B)
   X = ['We can use the columns {', mat2str(v1), ', ',mat2str(v2), ', ',mat2str(v3), ', ',mat2str(e2), ', ',mat2str(e3), '} to form a basis since each of those columns are the pivot columns of our row reduced matrix of [v1 v2 v3 e1 e2 e3].'];
   disp(X)
elseif ex==34
   cost = [0;1;0;0;0;0;0];
   cos2t = [-1;0;2;0;0;0;0];
   cos3t=[0;-3;0;4;0;0;0];
   cos4t=[1;0;-8;0;8;0;0];
   cos5t=[0;5;0;-20;0;16;0];
   cos6t = [-1;0;18;0;-48;0;32];
   A = [eye(7,1) cost cos2t cos3t cos4t cos5t cos6t]
   A = inv(A)
   disp('Since the matrix A has seven pivot columns, every column in A form a basis for H')
else
   disp('No solution for this exercise in Section 4.5.')
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
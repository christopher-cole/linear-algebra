C1s3 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex == 1 || ex == 2
   a = u + v;
   b = u - 2*v;
   disp('u + v = ')
   disp(mat2str(a))
   disp('u - 2v = ')
   disp(mat2str(b))
elseif ex==11 
   M = [a1 a2 a3 b]
   echo on
   M1 = replace(M, 2, 2, 1);
   M2 = replace(M1, 3, -2, 2);
   echo off
   M = M2;
   disp(M)
   disp('b is not a linear combination, this is because there are no weights we can plug in for a1 a2 or a3 to produce b.')
   
elseif ex==12
   M = [a1 a2 a3 b]
   echo on
   M1 = replace(M, 2, 2, 1);
   M2 = replace(M1, 3, -2, 1);
   M3 = replace(M2, 3, -1, 2);
   echo off
   M = M3;
   disp(M)
   disp('b is not a linear combination, this is because there is a bad row, so no solution exists. (Note in number 11 that there was a general solution, but b still was not a linear combination of those vectors)')
elseif ex==13
   M = [A b]
   echo on
   M1 = replace(M, 3, 2, 1);
   echo off
   M = M1;
   disp(M)
   disp('b is not a linear combination, this is because there is a bad row, so no solution exists.')
elseif ex==14 
   M = [A b]
   echo on
   M1 = replace(M, 3, -1, 1);
   M2 = scale(M1, 2, 1/3);
   M3 = replace(M2, 1, 2, 2);
   M4 = scale(M3, 3, 1/11);
   M5 = replace(M4, 2, -7/3, 3);
   M6 = replace(M5, 1, 4/3, 3);
   echo off
   M = M6;
   disp(M) 
   disp('There is a solution. The first, second and third weights respectively are 245/33, -41/33, -2/11') 
elseif ex==15 || ex==16
   disp('5 examples of vectors that are :')
   disp('Weights of 1 and 1 below')
   disp(mat2str(v1+v2))
   disp('Weights of 1 and -1 below')
   disp(mat2str(v1-v2))
   disp('Weights of -1 and 1 below')
   disp(mat2str(-v1+v2))
   disp('Weights of -1 and -1 below')
   disp(mat2str(-v1-v2))
   disp('Weights of 2 and 1 below')
   disp(mat2str(2*v1+v2))
elseif ex==25
   M = [A b]
   echo on
   M1 = replace(M, 3, 2, 1);
   M2 = replace(M1, 3, -2, 2);
   M3 = scale(M2, 3, -1);
   M4 = replace(M3, 2, 2, 3);
   M5 = replace(M4, 1, 4, 3);
   M6 = scale(M5, 2, 1/3);
   echo off
   M = M6;
   disp(M) 
   disp('a. b is not in {a1 a2 a3}, the set has three vectors')
   disp('b. b is in span{a1 a2 a3}, the weights that make it work are -4a1 -a2 - 2a3 = b. There are infinitely many vectors in the span{a1 a2 a3}')
   disp('c. To show a1 is in W, it''s easy. Just use weights of 1, 0 and 0 for a1 a2 and a3.')
elseif ex==26
   M = [A b]
   echo on
   M1 = scale(M, 1, 1/2);
   M2 = replace(M1, 2, 1, 1);
   M3 = replace(M2, 3, -1, 1);
   M4 = replace(M3, 3, 1/4, 2);
   M5 = scale(M4, 2, 1/8);
   echo off
   M = M5;
   disp(M) 
   disp('a. Since there is no unique solution (the solution is general), vector b is not a member of the span{a1 a2 a3}')
   disp('b. Choose weights of 0 1 0 for a1 a2 a3') 
elseif ex==27
   disp('a. Represents 5 days of operation')
   X = ['b. x1*',mat2str(v1), ' + x2*',mat2str(v2), ' = ', mat2str(b)];
   disp(X) 
   M = [A b]
   echo on
   M1 = scale(M, 1, 1/20);
   M2 = replace(M1, 2, -550, 1);
   M3 = scale(M2, 2, -1/325);
   M4 = replace(M3, 1, -3/2, 2);
   echo off
   M = M4
   Y = ['c. Mine 1 will take ',num2str(M(5)), ' days and Mine 2 will take ',num2str(M(6)),' days.'];
   disp(Y)
elseif ex==28
   disp('a. The plant produces x1*138/5 + x2*151/5 tons of heat where x1 and x2 are constants of our choosing.')
   X = ['b. The plant produces x1*',mat2str(v1),' + x2*',mat2str(v2), ' tons of coal where the three rows stand for heat, sulfer dioxide, and particular matter']
   disp(X)
   M = [v1 v2 b]
   echo on
   M1 = scale(M, 1, 5/138);
   M2 = replace(M1, 2, -3100, 1);
   M3 = replace(M2, 3, -250, 1);
   M4 = scale(M3, 2, 34/102271);
   M5 = scale(M4, 3,69/5965);
   M6 = replace(M5, 3, -1, 2);
   M7 = replace(M6, 1, -151/138, 2);
   echo off
   M = M7
   disp('c. We need x1 = 39/10 and x2 = 9/5 to satisfy the final equation')
   
elseif ex==29
    mass = [4; 2; 3; 5]
    X = ['Center of gravity = ', num2str(sum((1/sum(mass)) * (v1*mass(1)+v2*mass(2)+v3*mass(3)+v4*mass(4))))];
    disp(X)
elseif ex==31
   X = ['a. Center of mass = ' mat2str((1/m)*((v1+v2+v3)))]
   disp(X)
   v4 = [2;2];
   Y = ['To solve our new equation given Center of mass, we need to multiply 6 to ', mat2str(v4), ' which is ', mat2str(6*v4)];
   disp(Y)
   cen_mass = 6*v4;
   M = [v1 v2 v3 cen_mass]
   echo on
   M1 = swap(M, 1, 2);
   M2 = scale(M1, 2, 1/8);
   M3 = replace(M2, 1, -1, 2);
   echo off
   disp('x3 = 2, x2 = 1, x1 = 3')
else 
   disp ('No solution for this exercise in Section 1.3.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
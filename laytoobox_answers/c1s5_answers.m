C1s5 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1
   M1 = scale(M, 1, 1/2);
   M2 = gauss(M1, 1);
   M3 = replace(M2, 3, 1, 2);
   M4 = scale(M3, 2, -1/12);
   M5 = bgauss(M4, 2);
   M5
   disp('x3 is a free variable. Therefore, there exists a nontrivial solution')
elseif ex==2
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, -1/5);
   M3 = gauss(M2, 2);
   M4 = bgauss(M3, 2);
   M5 = scale(M4, 3, 1/12);
   M6 = bgauss(M5, 3);
   M6
   disp('There are no free variables, therefore the only solution that exists is the trivial (zero) solution')  
elseif ex==3
   M1 = scale(M, 1, -1/3);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2,-1/3);
   M4 = bgauss(M3, 2);
   M4  
   disp('x3 is a free variable. Therefore, there exists a nontrivial solution')
elseif ex==4
   M1 = swap(M, 2, 1);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2,-1/3);
   M4 = bgauss(M3, 2);
   M4  
   disp('x3 is a free variable. Therefore, there exists a nontrivial solution')
elseif ex==5
   M1 = gauss(M, 1);
   M2 = replace(M1, 3, 1, 2);
   M3 = scale(M2, 2,1/3);
   M4 = bgauss(M3, 2);
   M4  
   X = ['The parametic vector form for this problem is ', 'x3',mat2str(-M4(:,3))];
   disp(X)
elseif ex==6
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M3 
   X = ['The parametic vector form for this problem is ', 'x3',mat2str(-M3(:,3))];
   disp(X)
elseif ex==7 || ex==8
   M = [A zeros(2,1)]
   M1 = bgauss(M, 2);
   M1
   X = ['The parametic vector form for this problem is ', 'x3',mat2str(-M1(:,3)), ' + x4',mat2str(-M1(:,4))];
   disp(X)
elseif ex==9
   M = [A zeros(2,1)]
   M1 = scale(M, 1, 1/3);
   M2 = gauss(M1, 1);
   M2
   X = ['The parametic vector form for this problem is ', 'x2',mat2str(-M2(:,2)), ' + x3',mat2str(-M2(:,3))]; 
   disp(X)
elseif ex==10
   M = [A zeros(2,1)]
   M1 = gauss(M, 1);
   M1
   X = ['The parametic vector form for this problem is ', 'x2',mat2str(-M1(:,2)), ' + x4',mat2str(-M1(:,4))]; 
   disp(X)
elseif ex==11
   M = [A zeros(4,1)]
   M1 = bgauss(M, 2);
   M2 = bgauss(M1, 3);
   M2
   X = ['The parametic vector form for this problem is ', 'x2',mat2str(-M2(:,2)), ' + x6',mat2str(-M2(:,6))]; 
   disp(X)
elseif ex==12
   M = [A zeros(4,1)]
   M1 = bgauss(M, 2);
   M2 = bgauss(M1, 3);
   M2
   X = ['The parametic vector form for this problem is ', 'x2',mat2str(-M2(:,2)), ' + x4',mat2str(-M2(:,4)),' + x5',mat2str(-M2(:,5))]; 
   disp(X)
elseif ex==15
   M = [A zeros(3, 1)]
   M1 = gauss(M, 1);
   M2 = replace(M1, 3, 1, 2);
   M3 = scale(M2, 2, 1/3);
   M4 = bgauss(M3, 2);
   M4
   X = ['The parametic vector form for this problem is ', 'x3',mat2str(-M4(:,3)), ' + x4',mat2str(-M4(:,4))]; 
   disp(X)
elseif ex==16
   M = [A zeros(3, 1)]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M3
   X = ['The parametic vector form for this problem is ', 'x3',mat2str(-M3(:,3)), ' + x4',mat2str(-M3(:,4))]; 
   disp(X)
else 
   disp ('No solution for this exercise in Section 1.5.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
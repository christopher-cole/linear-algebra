C1s8 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1 || ex==2
   b = A*u;
   X = ['A * u = ', mat2str(b)];
   disp(X)
elseif ex==3
   M = [A b]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = scale(M2, 3, 1/5);
   M4 = bgauss(M3, 3);
   M4
   X = ['x = ' mat2str(M4(:,4)), ' but is x unique? Yes it is'];
   disp(X)
elseif ex==4
   M = [A b]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M4 = bgauss(M3, 3);
   M4
   X = ['x = ' mat2str(M4(:,4)), ' but is x unique? Yes it is'];
   disp(X)
elseif ex==5  
   M = [A b]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, -1/8);
   M3 = bgauss(M2, 2);
   M3
   X = ['x1 = ', num2str(M3(1,end)), ' - ', mat2str(M3(1,3)), 'x3',' and x2 = ', num2str(M3(2,end)), ' - ', mat2str(M3(2,3)),'x3',' but is the solution unique? No, because our equation has free variables.'];
   disp(X)
elseif ex==6
   M = [A b]
   M1 = gauss(M, 1);
   M2 = scale(M1, 2, 1/2);
   M3 = gauss(M2, 2);
   M4 = bgauss(M3, 2);
   M4
   X = ['x1 = ', num2str(M4(1,end)), ' - ', mat2str(M4(1,3)), 'x3',' and x2 = ', num2str(M4(2,end)), ' - ','x3',' but is the solution unique? No, because our equation has free variables.'];
   disp(X)
elseif ex==9
   M = [A zeros(3,1)]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M3
   X = ['x1 = ', num2str(-M3(1,3)) , 'x3 + ', num2str(-M3(1,4)), 'x4', ' and ', 'x2 = ', num2str(-M3(2,3)) , 'x3 + ', num2str(-M3(2,4)), 'x4'];
   disp(X)
elseif ex==10
   M = [A zeros(4, 1)]
   M1 = gauss(M, 1);
   M2 = swap(M1, 2, 3);
   M3 = gauss(M2, 2);
   M3
   disp('We have at least one bad row. So no solution')
elseif ex==11
   M = [A b]
   M1 = gauss(M, 1);
   M2 = gauss(M1, 2);
   M3 = bgauss(M2, 2);
   M3
   disp('Since there is a solution (general), therefore, b is in the range of the transformation.')
elseif ex==12
   M = [A b]
   M1 = gauss(M, 1);
   M2 = swap(M1, 2, 3);
   M3 = gauss(M2, 2);
   M4 = bgauss(M3, 2);
   M5 = scale(M4, 3, 1/3);
   M6 = gauss(M5, 3);
   M6
   disp('We have a bad row, therefore, b is not in the range of the transformation.')
elseif ex==37
   M = [A zeros(4,1)]
   M1 = scale(M, 1, 1/4);
   M2 = gauss(M1, 1);
   M3 = swap(M2, 2, 3);
   M4 = gauss(M3, 2);
   M5 = bgauss(M4, 2);
   M6 = scale(M5, 3, -1/28);
   M7 = gauss(M6, 3);
   M8 = bgauss(M7, 3);
   M8
   X = ['The solution is x1 = ', num2str(-M8(1,4)), 'x4 and x2 = ',num2str(-M8(2,4)), 'x4 and x3 = ',num2str(M8(3,4) )];
   disp(X)
elseif ex==38
   M = [A zeros(4,1)]
   M1 = scale(M, 1, -1/9);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -9/92);
   M4 = gauss(M3, 2);
   M5 = bgauss(M4, 2);
   M6 = scale(M5, 3, -23/6);
   M7 = gauss(M6, 3);
   M8 = bgauss(M7, 3);
   M8
   X = ['The solution is x1 = ', num2str(-M8(1,4)), 'x4 and x2 = ',num2str(-M8(2,4)), 'x4 and x3 = ',num2str(-M8(3,4) ), 'x4'];
   disp(X)
elseif ex==39
   M = [A b]
   M1 = scale(M, 1, 1/4);
   M2 = gauss(M1, 1);
   M3 = swap(M2, 2, 3);
   M4 = gauss(M3, 2);
   M5 = bgauss(M4, 2);
   M6 = scale(M5, 3, -1/28);
   M7 = gauss(M6, 3);
   M8 = bgauss(M7, 3);
   M8
   disp('There is a solution (multiple), examples of what would work are (4, 7, 1, 0)')
elseif ex==40
   M = [A b]
   M1 = scale(M, 1, -1/9);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -9/92);
   M4 = gauss(M3, 2);
   M5 = bgauss(M4, 2);
   M6 = scale(M5, 3, -23/6);
   M7 = gauss(M6, 3);
   M8 = bgauss(M7, 3);
   M8
   disp('There is a solution (multiple), examples of what would work are (-5/4, -11/4, 13/4, 0)')
else 
   disp ('No solution for this exercise in Section 1.8.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
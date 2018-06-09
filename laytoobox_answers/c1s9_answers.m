C1s9 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==21     
   M = [A u]
   M1 = gauss(M, 1);
   M2 = bgauss(M1, 2);
   M2
   X = ['x equals ', mat2str(M2(:,3))];
   disp(X)  
elseif ex==22  
   M = [A u]
   M1 = gauss(M, 1);
   M2 = bgauss(M1, 2);
   M3 = bgauss(M2, 2);
   M3
   X = ['x equals ', mat2str(M3(:,3))];
   disp(X)         
elseif ex==25   
   A1 = bgauss(A, 3);
   A2 = bgauss(A1, 4);
   A2
   disp('There is not a pivot in every row, so the mapping is not onto. The solution is general and not just trivial though, so it is also not one to one')

elseif ex==26 
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, -1/19);
   A3 = bgauss(A2, 2);
   A3
   disp('There is a pivot in every row, so the mapping is onto. The solution is general and not just trivial though, so it is one to one')
elseif ex==27
   A1 = bgauss(A, 2)
   A1
   disp('There is a pivot in every row, so the mapping is onto. The solution is general and not just trivial though, so it is one to one')
elseif ex==37
   A1 = scale(A, 1, -1/5);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 1/19);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = scale(A5, 3, 19/7);
   A7 = gauss(A6, 3);
   A8 = bgauss(A7, 3);
   A8
   disp('There is not a pivot in every row, so the mapping is not onto. The solution is not trivial though, so it is also not one to one')

elseif ex==38
   A1 = scale(A, 1, 1/7);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -7/8);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = scale(A5, 4, -2/15);
   A7 = bgauss(A6, 4);
   A7
   disp('There is not a pivot in every row, so the mapping is not onto. The solution is not trivial though, so it is also not one to one')
elseif ex==39
   A1 = scale(A, 1, 1/4);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 2/5);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = scale(A5, 3, -10/23);
   A7 = gauss(A6, 3);
   A8 = bgauss(A7, 3);
   A9 = scale(A8, 5, -23/329);
   A10 = bgauss(A9, 5);
   A10
   disp('There is not a pivot in every row, so the mapping is not onto. The solution is not trivial though, so it is also not one to one')
elseif ex==40      
   A1 = scale(A, 1, 1/9);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -9/47);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2);
   A6 = scale(A5, 3, 47/433);
   A7 = gauss(A6, 3);
   A8 = bgauss(A7, 3);
   A9 = scale(A8, 4, 433/861);
   A10 = gauss(A9, 4);
   A11 = bgauss(A10, 4);
   A11
   disp('There is not a pivot in every row, so the mapping is not onto. The solution is not trivial though, so it is also not one to one')
else 
   disp ('No solution for this exercise in Section 1.9.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
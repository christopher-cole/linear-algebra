C1s7 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1
   A = [a1 a2 a3 zeros(3,1)]
   A1 = scale(A, 1, 1/5);
   A2 = replace(A1, 3, 3, 2);
   A3 = scale(A2, 3, 1/4);
   A4 = bgauss(A3, 3);
   A5 = scale(A4, 2, 1/2);
   A6 = bgauss(A5, 2);
   A6
   disp('There is only the trivial solution, therefore, they are linearly independent.')
elseif ex==2
   A = [a1 a2 a3 zeros(3,1)]
   A1 = scale(A, 3, 1/2);
   A2 = swap(A1, 1, 3);
   A3 = scale(A2, 3, -1/3);
   A4 = bgauss(A3, 3);
   A5 = scale(A4, 2, 1/5);
   A6 = bgauss(A5, 2);
   A6
   disp('There is only the trivial solution, therefore, they are linearly independent.')
elseif ex==3
   A = [a1 a2 zeros(2,1)]
   A1 = gauss(A, 1);
   A1
   disp('There is a non trivial solution, a2 = 3a1. The vectors are linearly dependent.')
elseif ex==4
   A = [a1 a2 zeros(2,1)]
   A1 = scale(A, 1, -1);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -1/16);
   A4 = bgauss(A3, 2);
   A4
   disp('There is only the trivial solution, therefore, they are linearly independent.')
elseif ex==5
   M = [A zeros(4, 1)]
   M1 = swap(M, 1, 4);
   M2 = gauss(M1, 1);
   M3 = replace(M2, 3, -1, 2);
   M4 = scale(M3, 2, 1/2);
   M5 = bgauss(M4, 2);
   M6 = gauss(M5, 2);
   M7 = scale(M6, 4, -1/3);
   M8 = swap(M7, 3, 4);
   M9 = bgauss(M8, 3);
   M9
   disp('There is only the trivial solution, therefore, they are linearly independent.')   
elseif ex==6  
   M = [A zeros(4, 1)]
   M1 = swap(M, 1, 3);
   M2 = gauss(M1, 1);
   M3 = scale(M2, 2, -1);
   M4 = gauss(M3, 2);
   M5 = swap(M4, 3, 4);
   M6 = scale(M5, 3, 1/7);
   M7 = bgauss(M6, 3);
   M7
   disp('There is only the trivial solution, therefore, they are linearly independent.')  
elseif ex==7
   disp('You can tell by inspection, since there are more columns than rows, that the vectors must be linearly dependent')   
elseif ex==8   
   disp('You can tell by inspection, since there are more columns than rows, that the vectors must be linearly dependent')    
elseif ex==41
   B = [A(:,1) A(:,2) A(:,5) zeros(4, 1)]
   B1 = scale(B, 1, 1/8);
   B2 = gauss(B1, 1);
   B3 = scale(B2, 2, 8/5);
   B4 = gauss(B3, 2);
   B5 = bgauss(B4, 2);
   B6 = scale(B5, 3, 5/22);
   B7 = gauss(B6, 3);
   B8 = bgauss(B7, 3);
   B8
   disp('Making a matrix with the first second and fifth columns produce a linearly independent solution.')   
elseif ex==42
   B = [A(:,1) A(:,2) A(:,5) A(:,6) zeros(5,1)]
   B1 = scale(B, 1, 1/12);
   B2 = gauss(B1, 1);
   B3 = scale(B2, 2, -6);
   B4 = gauss(B3, 2);
   B5 = scale(B4, 3, -2/89);
   B6 = gauss(B5, 3);
   B7 = bgauss(B6, 2);
   B8 = bgauss(B7, 3);
   B9 = scale(B8, 4, 1/3);
   B10 = bgauss(B9, 4);
   B10
   disp('Making a matrix with the first second fifth and sixth columns produce a linearly independent solution.')  
elseif ex==43
   B = [A(:,1) A(:,2) A(:,5) A(:,3)]
   B1 = scale(B, 1, 1/8);
   B2 = gauss(B1, 1);
   B3 = scale(B2, 2, 8/5);
   B4 = gauss(B3, 2);
   B5 = bgauss(B4, 2);
   B6 = scale(B5, 3, 5/22);
   B7 = gauss(B6, 3);
   B8 = bgauss(B7, 3);
   B8
   disp('The vector we chose has a non trivial solution.') 
elseif ex==44
   B = [A(:,1) A(:,2) A(:,5) A(:,6) A(:,3)]
   B1 = scale(B, 1,1/12);
   B2 = gauss(B1, 1);
   B3 = scale(B2, 2, -6);
   B4 = gauss(B3, 2);
   B5 = bgauss(B4, 2);
   B6 = scale(B5, 3, -2/89);
   B7 = gauss(B6, 3);
   B8 = bgauss(B7, 3);
   B9 = scale(B8,4, 1/3);
   B10 = bgauss(B9, 4);
   B10
   disp('The vector we chose has a non trivial solution. Perhaps we notice a pattern?')
else 
   disp ('No solution for this exercise in Section 1.7.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
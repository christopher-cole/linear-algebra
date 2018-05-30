C1s1 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex == 1 %Each if statement, if properly executed, will display the answer for whichever problem you want. Provided that it's in the data set.
    echo on %The purpose of the echo statement is so that when you have to verify if a calculation is correct, you can see the code that changed our original matrix
    M1 = replace(M,2,2,1);
    M2 = scale(M1,2,1/3);
    M3 = replace(M2,1,-5,2);
    echo off
    M = M3;
    disp(M)
elseif ex == 2 
    echo on 
    M1 = scale(M,1,1/2);
    M2 = replace(M1,2,-5,1);
    M3 = scale(M2, 2, -1/3);
    M4 = replace(M3,1,-2,2);
    echo off
    M = M4;
    disp(M)
elseif ex == 3 
    echo on 
    M1 = replace(M,2,-1,1);
    M2 = scale(M1,2,-1/7);
    M3 = replace(M2, 1, -5, 2);
    echo off
    M = M3;
    disp(M)
elseif ex == 4
    echo on 
    M1 = replace(M, 2, -3, 1);
    M2 = scale(M1,2,1/8);
    M3 = replace(M2, 1, 5, 2);
    echo off
    M = M3;
    disp(M)
elseif ex == 7
    disp('Take note of the third row of this matrix, you''ll see that it is of the form [0 0 0 1]. If this were the case, then 0 = 1 would be true. Therefore, the system of equations is inconsistent. ') 
elseif ex == 8
    echo on 
    M1 = scale(M, 3, 1/2);
    M2 = replace(M1, 2, -7, 3);
    M3 = replace(M2, 1, 4, 2);
    M4 = replace(M3, 1, -9, 3);
    echo off
    M = M4;
    disp(M)
    disp('The only solution that satisfies this system of equations is where each variable is equal to zero')
elseif ex == 9
    echo on 
    M1 = scale(M,4,1/2);
    M2 = replace(M1,3,3,4);
    M3 = replace(M2,2,3,3);
    M4 = replace(M3,1,1,2);
    echo off
    M = M4;
    disp(M)
    disp('Variables 1-4 are equal to 4, 8, 5 and 2 respectively')
elseif ex == 10
    echo on 
    M1 = replace(M, 2, 4, 4);
    M2 = replace(M1, 1, -3, 4);
    M3 = replace(M2, 1, 2, 2);
    echo off
    M = M3;
    disp(M)
    disp('Variables 1-4 are equal to -3, -5, 6 and -3 respectively')
elseif ex == 11
    echo on 
    M1 = replace(M, 3, -3, 2);
    M2 = swap(M1, 1, 2);
    M3 = scale(M2,3,-1/2);
    M4 = replace(M3, 2, -1, 3);
    echo off
    M = M4;
    disp(M)
    disp('There is no solution, the second row is a "bad row" ')
elseif ex == 12
    echo on 
    M1 = replace(M, 2, -3, 1);
    M2 = replace(M1, 3, 4, 1);
    M3 = replace(M2, 3, 3, 2);
    echo off
    M = M3;
    disp(M)
    disp('There is no solution, the third row is a "bad row" ')
elseif ex == 13
    echo on 
    M1 = swap(M, 2, 3);
    M2 = replace(M1, 3, -2, 1);
    M3 = replace(M2, 3, -2, 2);
    M4 = scale(M3, 3, 1/5);
    M5 = replace(M4, 2, -5, 3);
    M6 = replace(M5, 1, 3, 3);
    echo off
    M = M6;
    disp(M)
    disp('Variables 1-3 are equal to 5, 3, -1 respectively')
elseif ex == 14
    echo on 
    M1 = replace(M, 2, 1, 1);
    M2 = replace(M1, 2, 2, 3);
    M3 = swap(M2, 2, 3);
    M4 = scale(M3, 3, 1/7);
    M5 = replace(M4, 2, -1, 3);
    M6 = replace(M5, 1, 3, 2);
    echo off
    M = M6;
    disp(M)
    disp('Variables 1-3 are equal to 2, -1, -1 respectively')
elseif ex == 15
    echo on 
    M1 = replace(M, 4, -3, 1);
    M2 = replace(M1, 3, 2, 2);
    M3 = scale(M2, 3, 1/3);
    M4 = replace(M3, 4, 9, 3);
    M5 = scale(M4, 4, -1/5);
    M6 = replace(M5, 3, 4/3, 4);
    M7 = replace(M6, 2, 3, 4);
    M8 = replace(M7, 1, -3, 3);
    echo off
    M = M8;
    disp(M)
    disp('Variables 1-4 are equal to 3, -3, -1/3, -2 respectively')
elseif ex == 16
    echo on 
    M1 = replace(M, 4, 2, 1);
    M2 = scale(M1, 2, 1/2);
    M3 = replace(M2, 4, -3, 2);
    M4 = replace(M3, 4, 1, 3);
    M5 = replace(M4, 2, -1, 3);
    echo off
    M = M5;
    disp(M)
    disp('There are an infinite number of solutions')
elseif ex == 17
    echo on 
    M1 = replace(M, 3, 1, 1);
    M2 = replace(M1, 2, -2, 1);
    M3 = replace(M2, 3, 1, 2);
    M4 = scale(M3, 2, 1/7);
    M5 = replace(M4, 1, 4, 2);
    echo off
    M = M5;
    disp(M)
    disp('Variables 1 and 2 have solutions of -13/7 and -5/7 respectively')
elseif ex == 18
    echo on 
    M1 = replace(M, 3, -1, 1);
    M2 = replace(M1, 3, -1, 2);
    echo off
    M = M2;
    disp(M)
    disp('There is no solution, the second row is a "bad row" ')

elseif ex == 29
    disp('You just need to swap the first and second rows to make them the same')
elseif ex == 30
    disp('You need to multiply the second row by -1/2')
elseif ex == 31
    echo on
    M3 = replace(M1, 3, -4, 1);
    echo off
    disp('Subtract 4 times the first row from the third row')
elseif ex == 32
    echo on
    M3 = replace(M1, 3, 3, 2);
    echo off
    disp('Add 3 times the second row to the third row')
    
elseif ex == 34
    echo on
    M1 = replace(M, 1, -1, 3);
    M2 = replace(M1, 4, 4, 3);
    M3 = swap(M2, 3, 4);
    M4 = scale(M3, 4, -1);
    M5 = replace(M4, 4, -1, 1);
    M6 = scale(M5, 1, 1/4);
    M7 = replace(M6, 3, 1, 2);
    M8 = replace(M7, 2, 1, 1);
    M9 = scale(M8, 3, -1/2);
    M10 = replace(M9, 3, -1, 1);
    M11 = replace(M10, 4, 4, 1);
    M12 = replace(M11, 2, -4, 4);
    M13 = swap(M12, 2, 4);
    M14 = scale(M13, 3, -1/6);
    M15 = replace(M14, 4, -14, 3);
    M16 = scale(M15, 4, -1/4);
    M17 = replace(M16, 2, -1, 4);
    M18 = replace(M17, 2, 4, 3);
    M19 = replace(M18, 1, 1, 3);
   
    echo off
    M = M19;
    disp(M)
    disp('Variables 1-4 are equal to 20, 55/2, 30, 45/2 respectively')
    
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices. It will provide the answers, and a justification
%when necessary.
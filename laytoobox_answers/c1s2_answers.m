C1s2 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex == 3 %Each if statement, if properly executed, will display the answer for whichever problem you want. Provided that it's in the data set.
    echo on %The purpose of the echo statement is so that when you have to verify if a calculation is correct, you can see the code that changed our original matrix
    M1 = replace(M, 3, -6, 1);
    M2 = replace(M1, 2, -4, 1);
    M3 = scale(M2, 3, -1/5);
    M4 = replace(M3, 2, 3, 3);
    M5 = swap(M4, 2, 3);
    M6 = replace(M5, 1, -2, 2);
    echo off
    M = M6;
    disp('The pivot positions are M(1,1) and M(2,2), the pivot columns are columns 1 and 2')
elseif ex == 4
    echo on 
    M1 = replace(M, 2, -3, 1);
    M2 = replace(M1, 3, -5, 1);
    M3 = replace(M2, 3, -2, 2);
    M4 = scale(M3, 2, -1/4);
    M5 = replace(M4, 1, -3, 2);
    M6 = scale(M5, 3, -1/10);
    M7 = replace(M6, 2, -3, 3);
    M8 = replace(M7, 1, 2, 3);
    echo off
    M = M8;
    disp('The pivot positions are M(1,1), M(2,2) and M(3,4), the pivot columns are columns 1, 2 and 4')
elseif ex == 7
    echo on 
    M1 = replace(M, 2, -3, 1);
    M2 = scale(M1, 2, -1/5);
    M3 = replace(M2, 1, -4, 2);
    echo off
    M = M3;
    disp(M)
    disp('The solution is: x1 + 3x2 = -5 and x3 = 3')
elseif ex == 8
    echo on 
    M1 = replace(M, 2, -2, 1);
    M2 = replace(M1, 1, 4, 2);
    M3 = scale(M2, 2, -1);
    echo off
    M = M3;
    disp(M)
    disp('The solution is: x1 = -9 and x2 = 4')
elseif ex == 9
    echo on 
    M1 = swap(M, 1, 2);
    M2 = replace(M1, 1, 2, 2);
    echo off
    M = M2;
    disp(M)
    disp('The solution is: x1 - 5x3 = 4 and x2 - 6x3 = 5')
elseif ex == 10
    echo on 
    M1 = replace(M, 2, -3, 1);
    M2 = replace(M1, 1, 1, 2);
    echo off
    M = M2;
    disp(M)
    disp('The solution is: x1 - 2x2 = -4 and x3 = -7')
elseif ex == 11
    echo on 
    M1 = replace(M, 2, 3, 1);
    M2 = replace(M1, 3, 2, 1);
    M3 = scale(M2, 1, 1/3);
    echo off
    M = M3;
    disp(M)
    disp('The solution is: x1 - (4/3)x2 + (2/3)x3 = 0')
elseif ex == 12
    echo on 
    M1 = replace(M, 3, 1, 1);
    M2 = replace(M1, 3, 4, 2);
    echo off
    M = M2;
    disp(M)
    disp('The solution is: x1 - 7x2 + 6x4 = 5 and x3 - 2x4 = -3')
elseif ex == 13
    echo on 
    M1 = replace(M, 1, 3, 2);
    M2 = replace(M1, 1, 1, 3);
    echo off
    M = M2;
    disp(M)
    disp('The solution is: x1 - 3x5 = 5, x2 - 4x5 = 1 and x4 + 9x5 = 4')
elseif ex == 14
    echo on 
    M1 = replace(M, 1, -2, 2);
    echo off
    M = M1;
    disp(M)
    disp('The solution is: x1 + 7x3 = -9, x2 - 6x3 - 3x4 = 2 and x5 = 0')
elseif ex == 33
    echo on
    M1 = replace(M, 2, -1, 1);
    M2 = replace(M1, 3, -1, 1);
    M3 = replace(M2, 1, -1, 2);
    M4 = replace(M3, 3, -2, 2);
    M5 = replace(M4, 1, 1, 3);
    M6 = scale(M5, 3, 1/2);
    M7 = replace(M6, 2, -3, 3);
    echo off
    M = M7;
    disp(M)
    disp('Variables 1-3 are equal to 7, 6, and -1 respectively')
elseif ex == 34
    echo on
    M1 = replace(M, 2, -1, 1);
    M2 = replace(M1, 3, -1, 1);
    M3 = replace(M2, 4, -1, 1);
    M4 = replace(M3, 5, -1, 1);
    M5 = replace(M4, 6, -1, 1);
    M6 = replace(M5, 3, -2, 2);
    M7 = replace(M6, 4, -3, 2);
    M8 = replace(M7, 5, -4, 2);
    M9 = replace(M8, 6, -5, 2);
    M10 = scale(M9, 2, 1/2);
    M11 = replace(M10, 4, -3, 3);
    M12 = replace(M11, 5, -6, 3);
    M13 = replace(M12, 6, -10, 3);
    M14 = scale(M13, 3, 1/8);
    M15 = replace(M14, 2, -2, 3);
    M16 = replace(M15, 5, -4, 4);
    M17 = replace(M16, 6, -10, 4);
    M18 = scale(M17, 4, 1/48);
    M19 = replace(M18, 3, -6, 4);
    M20 = replace(M19, 2, 8, 4);
    M21 = replace(M20, 6, -5, 5);
    M22 = scale(M21, 5, 1/384);
    M23 = scale(M22, 6, 1/3840);
    M24 = replace(M23, 4, -12, 5);
    M25 = replace(M24, 3, 44, 5);
    M26 = replace(M25, 2, -48, 5);
    M27 = replace(M26, 5, -20, 6);
    M28 = replace(M27, 4, 140, 6);
    M29 = replace(M28, 3, -400, 6);
    M30 = replace(M29, 2, 384, 6);
    echo off
    M = M30;
    disp(M)
    disp('Variables 1-6 are equal to 0, 137/80, -1147/960, 127/192, -269/3840 and 1/384 respectively')
else 
   disp ('No solution for this exercise in Section 1.2.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices. It will provide the answers, and a justification
%when necessary.
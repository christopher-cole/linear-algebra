% data for Exercise Set 2.9

ex = input('Exercise number (1-14,29,30)? ');

if ex==1
   b1 = [1;1], b2 = [2;-1], xb = [3;2]
elseif ex==2
   b1 = [-2;1], b2 = [3;1], xb = [-1;3]
elseif ex==3
   b1 = [1;-4], b2 = [-2;7], x = [-3;7]
elseif ex==4
   b1 = [1;-3], b2 = [-3;5], x = [-7;5]
elseif ex==5
   b1 = [1;5;-3], b2 = [-3;-7;5], x = [4;10;-7]
elseif ex==6
   b1 = [-3 1 -4]', b2 = [7 5 -6]', x = [11 0 7]'
elseif ex==7
   b1 = [3;0], b2 = [-1;2], w = [7;-2], x = [4;1]
elseif ex==8
   b1 = [0;2], b2 = [2;1], x = [-2;3], y = [2;4], z = [-1;-2.5]
elseif ex==9
   A = [1 -3 2 -4;-3 9 -1 5;2 -6 4 -3;-4 12 2 7], B = [1 -3 2 -4;0 0 5 -7;0 0 0 5;0 0 0 0]
elseif ex==10
   A = [1 -2 9 5 4;1 -1 6 5 -3;-2 0 -6 1 -2;4 1 9 1 -9], B = [1 -2 9 5 4;0 1 -3 0 -7;0 0 0 1 -2;0 0 0 0 0]
elseif ex==11
   A = [1 2 -5 0 -1;2 5 -8 4 3;-3 -9 9 -7 -2;3 10 -7 11 7], B = [1 2 -5 0 -1;0 1 2 4 5;0 0 0 1 2;0 0 0 0 0]
elseif ex==12
   A = [1 2 -4 3 3;5 10 -9 -7 8;4 8 -9 -2 7;-2 -4 5 0 -6], B = [1 2 -4 3 3;0 0 1 -2 0;0 0 0 0 -5;0 0 0 0 0]
elseif ex==13
   v1 = [1 -3 2 -4]', v2 = [-3 9 -6 12]', v3 = [2 -1 4 2]', v4 = [-4 5 -3 7]'
elseif ex==14
   v1 = [1 -1 -2 5]', v2 = [2 -3 -1 6]', v3 = [0 2 -6 8]', v4 = [-1 4 -7 7]', v5 = [3 -8 9 -5]'
elseif ex==29
   v1 = [11 -5 10 7]', v2 = [14 -8 13 10]', x = [19 -13 18 15]'    
elseif ex==30
   v1 = [-6 4 -9 4]', v2 = [8 -3 7 -3]', v3 = [-9 5 -8 3]', x = [4 7 -8 3]'
else
   disp('No data for this exercise in Section 2.9.')
end

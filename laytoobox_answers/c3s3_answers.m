C3s3 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex == 1 || ex == 2 || ex == 3 || ex == 4
   B = [b A(:, 2)];
   C = [A(:,1) b];
   X = ['The solution to this system is (', num2str(det(B)/det(A)), ', ', num2str(det(C)/det(A)), ').'];
   disp(X)
elseif ex==5
   B = [b A(:, [2 3])]
   C = [A(:,1) b A(:,3)]
   D = [A(:, [1 2]) b]
   A1 = scale(A, 1, 1/2);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 2/3);
   A4 = gauss(A3, 2)
   B1 = scale(B, 1, 1/7);
   B2 = gauss(B1, 1);
   B3 = scale(B2, 2, 7/8);
   B4 = gauss(B3, 2);
   C1 = scale(C, 1, 1/2);
   C2 = gauss(C1, 1);
   C3 = scale(C2, 2, 2/5);
   C4 = gauss(C3, 2);
   D1 = scale(D, 1, 1/2);
   D2 = gauss(D1, 1);
   D3 = scale(D2, 2, 2/3);
   D4 = gauss(D3, 2);
   V = ['The determinant of A is ', num2str(det(A4)), '* 3 which equals ',num2str(det(A))];
   W = ['The determinant of B is ', num2str(det(B4)), '* 8 which equals ',num2str(det(B))];
   X = ['The determinant of C is ', num2str(det(C4)), '* 5 which equals ',num2str(det(C))];
   Y = ['The determinant of D is ', num2str(det(D4)), '* 3 which equals ',num2str(det(D))];
   Z = ['The solution to this system is (', num2str(det(B)/det(A)), ', ', num2str(det(C)/det(A)), ', ', num2str(det(D)/det(A)), ').'];
   disp(V)
   disp(W)
   disp(X)
   disp(Y)
   disp(Z)
elseif ex==6
   B = [b A(:, [2 3])]
   C = [A(:,1) b A(:,3)]
   D = [A(:, [1 2]) b]
   A1 = scale(A, 1, 1/2);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 2);
   A4 = gauss(A3, 2)
   B1 = scale(B, 1, 1/4);
   B2 = gauss(B1, 1);
   B3 = scale(B2, 2, -2);
   B4 = gauss(B3, 2);
   C1 = scale(C, 1, 1/2);
   C2 = gauss(C1, 1);
   C3 = scale(C2, 2, 1/4);
   C4 = gauss(C3, 2);
   D1 = scale(D, 1, 1/2);
   D2 = gauss(D1, 1);
   D3 = scale(D2, 2, 2);
   D4 = gauss(D3, 2);
   V = ['The determinant of A is ', num2str(det(A4))];
   W = ['The determinant of B is ', num2str(det(B4)), '* -2 which equals ',num2str(det(B))];
   X = ['The determinant of C is ', num2str(det(C4)), '* 8 which equals ',num2str(det(C))];
   Y = ['The determinant of D is ', num2str(det(D4))];
   Z = ['The solution to this system is (', num2str(det(B)/det(A)), ', ', num2str(det(C)/det(A)), ', ', num2str(det(D)/det(A)), ').'];
   disp(V)
   disp(W)
   disp(X)
   disp(Y)
   disp(Z)
elseif ex==11
   A1 = swap(A, 1, 3);
   A2 = scale(A1, 1, -1);
   A3 = gauss(A2, 1);
   A4 = scale(A3, 2, 1/3);
   A5 = gauss(A4, 2)
   C1 = det(A([2 3],[2 3]));
   C2 = -1*det(A([1 3],[2 3]));
   C3 = det(A([1 2],[2 3]));
   C4 = -1*det(A([2 3],[1 3]));
   C5 = det(A([1 3],[1 3]));
   C6 = -1*det(A([1 2],[1 3]));
   C7 = det(A([2 3],[1 2]));
   C8 = -1*det(A([1 3],[1 2]));
   C9 = det(A([1 2],[1 2]));
   B = (1/det(A))*[C1 C2 C3; C4 C5 C6; C7 C8 C9];
   V = ['The determinant of A is ', num2str(det(A5)), ' * 3 which equals ',num2str(det(A)), '. The inverse of A is equal to 1/det(A) * adj(A) as ', mat2str(inv(A)), ' = ', mat2str(B)];
   disp(V)
elseif ex==12
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, -1/4);
   A3 = gauss(A2, 2)
   C1 = det(A([2 3],[2 3]));
   C2 = -1*det(A([1 3],[2 3]));
   C3 = det(A([1 2],[2 3]));
   C4 = -1*det(A([2 3],[1 3]));
   C5 = det(A([1 3],[1 3]));
   C6 = -1*det(A([1 2],[1 3]));
   C7 = det(A([2 3],[1 2]));
   C8 = -1*det(A([1 3],[1 2]));
   C9 = det(A([1 2],[1 2]));
   B = (1/det(A))*[C1 C2 C3; C4 C5 C6; C7 C8 C9];
   V = ['The determinant of A is ', num2str(det(A3)), ' * -4 which equals ',num2str(det(A)), '. The inverse of A is equal to 1/det(A) * adj(A) as ', mat2str(inv(A)), ' = ', mat2str(B)];
   disp(V)
elseif ex==13
   A1 = swap(A, 1, 2);
   A2 = gauss(A1, 1);
   A3 = swap(A2, 2, 3);
   A4 = gauss(A3, 2)
   C1 = det(A([2 3],[2 3]));
   C2 = -1*det(A([1 3],[2 3]));
   C3 = det(A([1 2],[2 3]));
   C4 = -1*det(A([2 3],[1 3]));
   C5 = det(A([1 3],[1 3]));
   C6 = -1*det(A([1 2],[1 3]));
   C7 = det(A([2 3],[1 2]));
   C8 = -1*det(A([1 3],[1 2]));
   C9 = det(A([1 2],[1 2]));
   B = (1/det(A))*[C1 C2 C3; C4 C5 C6; C7 C8 C9];
   V = ['The determinant of A is ', num2str(det(A3)), '. The inverse of A is equal to 1/det(A) * adj(A) as ', mat2str(inv(A)), ' = ', mat2str(B)];
   disp(V) 
elseif ex==14
   A1 = scale(A, 1, 1/3);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 1/2);
   A4 = gauss(A3, 2)
   C1 = det(A([2 3],[2 3]));
   C2 = -1*det(A([1 3],[2 3]));
   C3 = det(A([1 2],[2 3]));
   C4 = -1*det(A([2 3],[1 3]));
   C5 = det(A([1 3],[1 3]));
   C6 = -1*det(A([1 2],[1 3]));
   C7 = det(A([2 3],[1 2]));
   C8 = -1*det(A([1 3],[1 2]));
   C9 = det(A([1 2],[1 2]));
   B = (1/det(A))*[C1 C2 C3; C4 C5 C6; C7 C8 C9];
   V = ['The determinant of A is ', num2str(det(A4)), ' * 6 which equals ', num2str(det(A)), '. The inverse of A is equal to 1/det(A) * adj(A) as ', mat2str(inv(A)), ' = ', mat2str(B)];
   disp(V) 
elseif ex==15
   A1 = scale(A, 1, 1/3);
   A2 = gauss(A1, 1);
   A3 = gauss(A2, 2)
   C1 = det(A([2 3],[2 3]));
   C2 = -1*det(A([1 3],[2 3]));
   C3 = det(A([1 2],[2 3]));
   C4 = -1*det(A([2 3],[1 3]));
   C5 = det(A([1 3],[1 3]));
   C6 = -1*det(A([1 2],[1 3]));
   C7 = det(A([2 3],[1 2]));
   C8 = -1*det(A([1 3],[1 2]));
   C9 = det(A([1 2],[1 2]));
   B = (1/det(A))*[C1 C2 C3; C4 C5 C6; C7 C8 C9];
   V = ['The determinant of A is ', num2str(det(A3)), ' * 3 which equals ', num2str(det(A)), '. The inverse of A is equal to 1/det(A) * adj(A) as ', mat2str(inv(A)), ' = ', mat2str(B)];
   disp(V) 
elseif ex==16
   A1 = scale(A, 2, -1/3);
   C1 = det(A([2 3],[2 3]));
   C2 = -1*det(A([1 3],[2 3]));
   C3 = det(A([1 2],[2 3]));
   C4 = -1*det(A([2 3],[1 3]));
   C5 = det(A([1 3],[1 3]));
   C6 = -1*det(A([1 2],[1 3]));
   C7 = det(A([2 3],[1 2]));
   C8 = -1*det(A([1 3],[1 2]));
   C9 = det(A([1 2],[1 2]));
   B = (1/det(A))*[C1 C2 C3; C4 C5 C6; C7 C8 C9];
   V = ['The determinant of A is ', num2str(det(A1)), ' * -3 which equals ', num2str(det(A)), '. The inverse of A is equal to 1/det(A) * adj(A) as ', mat2str(inv(A)), ' = ', mat2str(B)];
   disp(V) 
elseif ex==19 || ex==20
   A = [v2 v3]
   X = ['The area of the parallelogram is ', num2str(abs(det(A)))];
   disp(X)
elseif ex==21
   v5 = [1; 0];
   v1 = v1+v5
   v2 = v2+v5
   v3 = v3+v5
   v4 = v4+v5
   A = [v2 v3]
   X = ['The area of the parallelogram is ', num2str(abs(det(A)))];
   disp(X)
elseif ex==22
   v5 = [0; 2]; 
   v1 = v1+v5
   v2 = v2+v5
   v3 = v3+v5
   v4 = v4+v5
   A = [v2 v3]
   X = ['The area of the parallelogram is ', num2str(abs(det(A)))];
   disp(X)
elseif ex==23
   v = [v1 v2 v3]
   v1 = gauss(v, 1);
   v2 = scale(v1, 2, 1/2);
   v3 = gauss(v2, 2);
   X = ['The area of the parallelepiped is ', num2str(abs(det(v3))), ' * 2 = ', num2str(abs(det(v)))];
   disp(X)
elseif ex==24
   v = [v1 v2 v3]
   v1 = gauss(v, 1);
   v2 = scale(v1, 2, 1/3);
   v3 = gauss(v2, 2);
   X = ['The area of the parallelepiped is ', num2str(abs(det(v3))), ' * 3 = ', num2str(abs(det(v)))];
   disp(X) 
elseif ex==27 || ex == 28
   C = [b1 b2]
   X = ['The area of the parallelepiped is ', num2str(abs(det(C))), ' * ', num2str(abs(det(A))) , ', which equals ', num2str(abs(det(C)*det(A)))];
   disp(X)
else 
   disp ('No solution for this exercise in Section 3.3.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
C3s2 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==5
   A1 = [A(1,:); A(1,:)+A(2,:) ;A(3,:)];
   X = [mat2str(A), ' equals ', mat2str(A1), ', the determinant of this matrix is ', num2str(A1(1)), ' * ', mat2str(A1([2 3], [2 3])), ' + ', num2str(A1(3)), ' * ', mat2str(A1([1 2], [2 3])), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==6
   A1 = [A(1,:); A(1,:)+A(2,:) ;A(3,:) ];
   X = [mat2str(A), ' equals ', mat2str(A1), ', the determinant of this matrix is ', num2str(A1(7)), ' * ', mat2str(A1([2 3], [1 2])), ' + ', num2str(A1(9)), ' * ', mat2str(A1([1 2], [1 2])), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==7
   A1 = [A(1,:); A(2,:)+A(3,:); A(3,:); A(4,:)];
   A2 = replace(A1, 2, -1, 1)
   X = ['Triangle matrix with a zero in the diagonal, the determinant is ', num2str(det(A2))];
   disp(X)
elseif ex==8
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2)
   X = ['Triangle matrix, the determinant is ', num2str(det(A2))];
   disp(X)
elseif ex==9
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2);
   A3 = swap(A2, 3, 4)
   X = ['Triangle matrix, the determinant is ', num2str(det(A3)), ' * -1, so the determinant = ', num2str(det(A))];
   disp(X)
elseif ex==10
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, 1/2);
   A3 = gauss(A2, 2);
   A4 = swap(A3, 3, 4)
   X = ['Triangle matrix with a zero in the diagonal, the determinant is ', num2str(det(A4)), ' * -2, so the determinant = ', num2str(det(A))];
   disp(X)
elseif ex==11
   A1 = scale(A, 1, 1/2);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -2/15);
   A4 = gauss(A3, 2);
   A5 = replace(A4, 3, 4, 1)
   X = ['Triangle matrix, the determinant is ', num2str(det(A5)), ' * -15, so the determinant = ', num2str(det(A))];
   disp(X)
elseif ex==12
   A1 = scale(A, 1, -1);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 1/10);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, 5/21);
   A6 = gauss(A5, 3)
   X = ['Triangle matrix, the determinant is ', num2str(det(A6)), ' * -42, so the determinant = ', num2str(det(A))];
   disp(X)
elseif ex==13
   A1 = scale(A, 1, 1/2);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, -1/3);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, -3/14);
   A6 = gauss(A5, 3)
   X = ['Triangle matrix, the determinant is ', num2str(det(A6)), ' * 28, so the determinant = ', num2str(det(A))];
   disp(X)
elseif ex==14
   A1 = swap(A, 1, 2);
   A2 = gauss(A1, 1);
   A3 = scale(A2, 2, 1/7);
   A4 = gauss(A3, 2);
   A5 = scale(A4, 3, -7/27);
   A6 = gauss(A5, 3)
   X = ['Triangle matrix with a zero in the diagonal, the determinant is ', num2str(det(A))];
   disp(X)
elseif ex==21
   A1 = scale(A, 1, 1/2);
   A2 = gauss(A1, 1); 
   A3 = scale(A2, 2, 2/3);
   A4 = gauss(A3, 2)
   X = ['Triangle matrix, the determinant is ', num2str(det(A4)), ' * 3, so the determinant = ', num2str(det(A)), '. This matrix is invertible.'];
   disp(X)
elseif ex==22 || ex == 23
   A1 = swap(A, 1, 2);
   A2 = gauss(A1, 1)
   X = ['Triangle matrix with a zero in the diagonal, the determinant is 0. This matrix is invertible.'];
   disp(X)
elseif ex==24
   v = [v1 v2 v3] 
   v1 = scale(v, 1, 1/4);
   v2 = gauss(v1, 1);
   v3 = scale(v2, 2, 2/21);
   v4 = gauss(v3, 2)
   X = ['Triangle matrix, the determinant is ', num2str(det(v4)), ' * 42, so the determinant = ', num2str(det(v))];
   disp(X)
elseif ex==25
   v = [v1 v2 v3] 
   v1 = scale(v, 1, 1/7);
   v2 = gauss(v1, 1);
   v3 = scale(v2, 2, 7/3);
   v4 = gauss(v3, 2)
   X = ['Triangle matrix, the determinant is ', num2str(det(v4)), ' * 3, so the determinant = ', num2str(det(v)), '. This matrix is invertible'];
   disp(X)
elseif ex==26
   v = [v1 v2 v3 v4] 
   v1 = scale(v, 1, 1/3);
   v2 = gauss(v1, 1);
   v3 = scale(v2, 2, -3/28);
   v4 = gauss(v3, 2)
   X = ['Triangle matrix, the determinant is 0. The matrix is not invertible.'];
   disp(X)
elseif ex==29 
   B1 = gauss(B, 1); 
   B2 = gauss(B1, 2)
   X = ['The determinant of B^5 is det(B)^5, which is ', num2str(det(B)), ' to the power of 5, which is ', num2str(det(B^5))];
   disp(X)
elseif ex==37 || ex==38
   C = A*B
   X = ['The determinant of A and B respectively is: ', num2str(det(A)), ' and ', num2str(det(B)), '. The determinant of A*B is : ', num2str(det(C))];
   disp(X)
elseif ex==46
   B = eye(4,4);
   X = ['The condition numbers for A, 10A and .1A are, ', num2str(cond(A)), ', ',num2str(cond(10*A)), ', ',num2str(cond(.1*A)), '. The condition numbers for I, 10I and .1I are, ', num2str(cond(B)), ', ',num2str(cond(10*B)), ', ',num2str(cond(.1*B)), '. For determinants, we''ll see that the determinant of I and A are the same, 10I and 10A are the same and so forth, ', num2str(det(A)), ' = ' num2str(det(B)),' and ',num2str(det(10*A)), ' = ' num2str(det(10*B)), ' and ',num2str(det(.1*A)), ' = ' num2str(det(.1*B))];
   disp(X)
else 
   disp ('No solution for this exercise in Section 3.2.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
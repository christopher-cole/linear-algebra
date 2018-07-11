C4s4 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==1 | ex==2
   X = [num2str(xB(1)), '*',mat2str(b1),' + ',num2str(xB(2)), '*',mat2str(b2), ' = ', mat2str(xB(1)*b1+xB(2)*b2)];
   disp(X)
elseif ex==3 | ex==4
   X = [num2str(xB(1)), '*',mat2str(b1),' + ',num2str(xB(2)), '*',mat2str(b2), ' + ', num2str(xB(3)),'*',mat2str(b3),' = ', mat2str(xB(1)*b1+xB(2)*b2+xB(3)*b3)];
   disp(X)
elseif ex==5
   A = [b1 b2 x]
   A1 = gauss(A, 1);
   A2 = bgauss(A1, 2)
   X = ['x equals ', mat2str(A2(:,end))];
   disp(X)
elseif ex==6
   A = [b1 b2 x]
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, 1/4);
   A3 = bgauss(A2,2)
   X = ['x equals ', mat2str(A3(:,end))];
   disp(X)
elseif ex==7
   A = [b1 b2 b3 x]
   A1 = gauss(A, 1);
   A2 = bgauss(A1, 2);
   A3 = scale(A2, 3, 1/10);
   A4 = bgauss(A3, 3)
   X = ['x equals ', mat2str(A4(:,end))];
   disp(X)
elseif ex==8
   A = [b1 b2 b3 x]
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2);
   A3 = bgauss(A2, 2);
   A4 = bgauss(A3, 3)
   X = ['x equals ', mat2str(A4(:,end))];
   disp(X)
elseif ex==9
   X = ['The answer is ', mat2str([b1 b2])];
   disp(X)
elseif ex==10
   X = ['The answer is ', mat2str([b1 b2 b3])];
   disp(X) 
elseif ex==11 | ex==12
   X = ['The answer is ,',  mat2str(inv([b1 b2])), '*',mat2str(x), '. Which equals ', mat2str(inv([b1 b2])*x)];
   disp(X)
elseif ex==17
   A = [v1 v2 v3]
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, -1/2);
   A3 = bgauss(A2, 2)
   disp('Now we know why v1 v2 v3 form a linearly dependent set')
   B = [v1 v2 v4]
   B1 = gauss(B, 1);
   B2 = scale(B1, 2, -1/2);
   B3 = bgauss(B2, 2)
   X = ['The answer is ', num2str(B3(5)), '*', mat2str(v1), ' + ', num2str(B3(6)), '*', mat2str(v2), '*', num2str(0), '*', mat2str(v3), ' = ', mat2str(v4)];
   disp(X)
elseif ex==21
   A = [b1 b2]
   X = ['The solution is ', mat2str(inv(A))];
   disp(X)
elseif ex==27
   A = [p1 p2 p3 zeros(4,1)]
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2);
   A3 = gauss(A2, 3);
   A4 = bgauss(A3, 2);
   A5 = bgauss(A4, 3)
   disp('As we can see, only the trivial solution exists. So the set is linearly independent.')
elseif ex==28
   A = [p1 p2 p3 zeros(4,1)]
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2)
   disp('As we can see, there exists a nontrivial solution. So the set is linearly dependent.')
elseif ex==29
   A = [p1 p2 p3 zeros(4,1)]
   A1 = gauss(A, 1);
   A2 = swap(A1, 2, 4);
   A3 = gauss(A2, 2);
   A4 = bgauss(A3, 2)
   disp('As we can see, there exists a nontrivial solution. So the set is linearly dependent.')
elseif ex==30
   A = [p1 p2 p3 zeros(4,1)]
   A1 = gauss(A, 1);
   A2 = swap(A1, 2, 4);
   A3 = scale(A2, 2, 1/4);
   A4 = gauss(A3, 2);
   A5 = bgauss(A4, 2)
   disp('As we can see, there exists a nontrivial solution. So the set is linearly dependent.')
elseif ex==31
   A = [p1 p2 p3 p4]
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, -1/4);
   A3 = gauss(A2, 2)
   disp('The columns of A do not have a pivot in every row, therefore, they do not span P^2')
   B = [q1 q2 q3 q4]
   B1 = swap(B, 1, 3);
   B2 = gauss(B1, 1);
   B3 = swap(B2, 2, 3);
   B4 = gauss(B3, 2);
   B5 = bgauss(B4, 2);
   B6 = scale(B5, 3, -1/7);
   B7 = bgauss(B6, 3)
   disp('There are pivots in every row, therefore, the columns span P^2')
elseif ex==32
   A = [p1 p2 p3]
   A1 = gauss(A, 1);
   A2 = scale(A1, 2, -1);
   A3 = gauss(A2, 2);
   A4 = bgauss(A3, 2)
   disp('We can see from here that there are pivots in every row, therefore, the columns p1 p2 and p3 form a basis')
   X = ['q = ', num2str(qB(1)), mat2str(p1), ' + ', num2str(qB(2)), mat2str(p2),' + ', num2str(qB(3)), mat2str(p3), ' which equals ', mat2str(qB(1)*p1+qB(2)*p2+qB(3)*p3)];
   disp(X)
elseif ex==33 | ex==34
   A = [p1 p2 p3 p4]
   ref(A)
   disp('There are not have pivots in every row, the columns do not form a basis')  
elseif ex==35
   A = [v1 v2 x]
   A = ref(A)
   X = ['x is in Span{v1, v2}. ',num2str(A(9)), '*', mat2str(v1), ' + ', num2str(A(10)), '*',mat2str(v2) ' = ', mat2str(x)]; 
   Y = ['xB = ', mat2str(A([1 2],[3]))];
   disp(X)
   disp(Y)
elseif ex==36
   A = [v1 v2 v3 x]
   A = ref(A)
   X = ['x is in Span{v1, v2 v3}. ',num2str(A(13)), '*', mat2str(v1), ' + ', num2str(A(14)), '*',mat2str(v2),' + ', num2str(A(15)), '*',mat2str(v3) ' = ', mat2str(x)]; 
   Y = ['xB = ', mat2str(A([1:3],[4]))];
   disp(X)
   disp(Y)
elseif ex==37 | ex==38
   X = ['The answer is ', num2str(x(1)), '*', mat2str(u), ' + ', num2str(x(2)), '*', mat2str(v), ' + ', num2str(x(3)), '*' mat2str(w), ' = ', mat2str(x(1)*u+x(2)*v+x(3)*w)];
   disp(X)
else
   disp('No solution for this exercise in Section 4.4.')
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
C3s1 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if (ex==1 || ex==2 || ex==3 || ex==4 || ex==5 || ex==6 || ex==7 || ex==8)
   X = ['Cofactor expansion along first row: ', num2str(A(1)), ' * det(', mat2str(A([2 3],[2 3])), ') + ',num2str(-A(4)) ' * det(', mat2str(A([2 3], [1 3])) , ') + ',num2str(A(7)) ' * det(', mat2str(A([2 3], [1 2])), ') = ', num2str(det(A))];
   disp(X)
   if (ex==1 || ex==2 || ex==3 || ex==4)
      Y = ['Cofactor expansion along second column: ', num2str(-A(4)), ' * det(', mat2str(A([2 3],[1 3])), ') + ',num2str(A(5)) ' * det(', mat2str(A([1 3], [1 3])) , ') + ',num2str(-A(6)) ' * det(', mat2str(A([1 2], [1 3])), ') = ', num2str(det(A))];
      disp(Y)
   end
elseif ex==9
   X = ['Cofactor expansion along third row: ',num2str(A(3)), ' * ', mat2str(A([1 2 4],[2:4])),', which equals ', num2str(A(3)*A(13)), ' * ', mat2str(A([2 4],[2 3])), ' which equals ', num2str(det(A))];
   disp(X)
elseif ex==10
   X = ['Cofactor expansion along second row: ',num2str(-A(10)), ' * ', mat2str(A([1 3 4],[1 2 4])), ', which equals ', num2str(-A(10)*-A(5)), ' * ', mat2str(A([3 4],[1 4])), ' + ', num2str(A(10)*-A(7)), ' * ',mat2str(A([1 4], [1 4])), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==11
   X = ['Cofactor expansion along fourth row: ', num2str(A(16)), ' * ' mat2str(A([1:3], [1:3])), ', which equals ', num2str(A(16)*A(11)), ' * ', mat2str(A([1 2], [1 2])), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==12
   X = ['Cofactor expansion along first row: ', num2str(A(1)), ' * ', mat2str(A([2:4],[2:4])), ', which equals ', num2str(A(1)*A(6)), ' * ', mat2str(A([3 4], [3 4])), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==13
   X = ['Cofactor expansion along second row: ', num2str(-A(12)), ' * ', mat2str(A([1 3:5], [1 2 4 5])), ', which equals ', num2str(-A(12)*A(8)), ' * ', mat2str(A([1 4 5],[1 4 5])), ', which equals ', num2str(-A(12)*A(8)*A(1)), ' * ', mat2str(A([4 5], [4 5])), ' + ', num2str(-A(12)*A(8)*-A(4)), ' * ' mat2str(A([1 5],[4 5])), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==14
   X = ['Cofactor expansion along fourth row: ', num2str(-A(4)), ' * ', mat2str(A([1:3 5], [2:5])), ', which equals ', num2str(-A(4)*-A(23)), ' * ', mat2str(A([1 2 5],[2:4])),', which equals ', num2str(-A(4)*-A(23)*A(6)), ' * ', mat2str(A([2 5] , [3 4])), ' + ', num2str(-A(4)*-A(23)*A(10)), ' * ', mat2str(A([1 2],[3 4])), ', which equals ', num2str(det(A))];
   disp(X)
elseif (ex==15 || ex==16 || ex==17 || ex==18)
   X = ['The determinant equals ', ' - ', num2str(A(3)), ' * ',num2str(A(5)), ' * ',num2str(A(7)), ' - ',num2str(A(6)), ' * ',num2str(A(8)), ' * ',num2str(A(1)), ' - ',num2str(A(9)), ' * ',num2str(A(2)), ' * ',num2str(A(4)), ' + ', num2str(A(1)), ' * ',num2str(A(5)), ' * ',num2str(A(9)), ' + ',num2str(A(4)), ' * ',num2str(A(8)), ' * ',num2str(A(3)), ' + ',num2str(A(7)), ' * ',num2str(A(2)), ' * ',num2str(A(6)), ', which equals ', num2str(det(A))];
   disp(X)
elseif ex==37
   X = ['Here is 5A: ', mat2str(5*A), ', det(5*A) does not equal det(A), as ', num2str(det(5*A)), ' does not equal ', num2str(5*det(A))];
   disp(X)
elseif ex==41
   X = ['The area of [u v u+v zeros(2,1)] and det([u v]) are the same, as ', det([u v]), ' and ', mat2str([u v u+v zeros(2,1)]), ' are equal.'];
   disp(X)
else 
   disp ('No solution for this exercise in Section 3.1.')     
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
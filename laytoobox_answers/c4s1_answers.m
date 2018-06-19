C4s1 %This calls the dataset which contains the matrices for some problems.
%Make sure when prompted with "OK? y/n [y]:", to hit y and then enter (or just enter) if it's a correct
%calculation, and no if it isn't.
if ex==13
   A = [v1 v2 v3 w]
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2);
   A3 = bgauss(A2, 2)
   disp('No w isn''t in the set containing v1 v2 v3. There are three vectors in said set')
   disp('There are an infinite amount of vectors in span{v1, v2, v3}')
   disp('w is in the span. v1+v2 = w')
elseif ex==14
   A = [v1 v2 v3 w]
   A1 = gauss(A, 1);
   A2 = gauss(A1, 2)
   disp('w is not in the Span{v1, v2, v3}')
elseif ex==35
   A = [v1 v2 v3 w]
   A1 = scale(A, 1, 1/7);
   A2 = gauss(A1, 1); 
   A3 = scale(A2, 2, 7/19);
   A4 = gauss(A3, 2); 
   A5 = scale(A4, 3, 19/10); 
   A6 = gauss(A5,3); 
   A7 = bgauss(A6, 2); 
   A8 = bgauss(A7, 3) 
   X = ['w is in the subspace spanned by [v1 v2 v3]. ', num2str(A8(13)), ' * ', mat2str(v1), ' + ', num2str(A8(14)), ' * ', mat2str(v2), ' + ', num2str(A8(15)), ' * ', mat2str(v3), ' which equals ', mat2str(A8(13)*v1+A8(14)*v2+A8(15)*v3)];
   disp(X)
elseif ex==36
   M = [A y]
   M1 = scale(M, 1, 1/5);
   M2 = gauss(M1, 1); 
   M3 = scale(M2, 2, 1/16);
   M4 = gauss(M3, 2); 
   M5 = scale(M4, 3, 20/27); 
   M6 = gauss(M5, 3); 
   M7 = bgauss(M6, 2); 
   M8 = bgauss(M7, 3) 
   X = ['w is in the subspace spanned by [A y]. ', num2str(M8(13)), ' * ', mat2str(M(:,1)), ' + ', num2str(M8(14)), ' * ', mat2str(M(:,2)), ' + ', num2str(M8(15)), ' * ', mat2str(M(:,3)), ' which equals ', mat2str(M8(13)*M(:,1)+M8(14)*M(:,2)+M8(15)*M(:,3))];
   disp(X)
elseif ex==37
   t = 0:.01:2*pi;
   y = 1-8*cos(t).^2 + 8*cos(t).^4;
   x = -1 + 18*cos(t).^2 - 48*cos(t).^4 + 32*cos(t).^6;
   figure()
   plot(t, y, 'b')
   hold on
   plot(t, y+1, 'r')
   hold off
   figure()
   plot(t, x, 'k')
   hold on
   plot(t,x+1,'g')
   hold off
elseif ex==38
   t = 0:.01:2*pi;
   y = 3*sin(t) - 4*sin(t).^3;
   x = 1-8*sin(t).^2+8*sin(t).^4;
   z = 5*sin(t)-20*sin(t).^3+16*sin(t).^5;
   figure()
   plot(t, y, 'b')
   hold on
   plot(t, y+1, 'r')
   hold off
   figure()
   plot(t, x, 'k')
   hold on
   plot(t,x+1,'g')
   hold off 
   figure()
   plot(t, z, 'm')
   hold on
   plot(t,z+1,'c')
   hold off 
else
   disp('No solution for this exercise in Section 4.1.')
end

%This file can be used in the same manner as C1s1.m, except instead of
%providing the matrices the problem asks us to work with. It will provide the answers, and a justification
%when necessary.
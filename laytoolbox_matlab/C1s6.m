% data for Exercise Set 1.6
       
ex = input('Exercise number (1-14)? ');
       
if ex==1 | ex==2
   A = [.8 -.7 0;-.8 .7 0]   
elseif ex==3
   A = [.8 -.8 -.4 0;-.3 .9 -.4 0;-.5 -.1 .8 0]   
elseif ex==4
   A = [.35 -.30 -.30 -.20 0;-.10 .90 -.15 -.10 0;-.25 -.35 .85 -.30 0;0 -.25 -.40 .60 0]
elseif ex==5
   v1 = [2 3 0 0]', v2 = [0 0 2 1]', v3 = [1 0 3 3]', v4 = [0 1 2 0]' 
  % M = [2 0 -1 0 0;3 0 0 -1 0;0 2 -3 -2 0;0 1 -3 0 0]
elseif ex==6
   v1 = [3 1 4 0 0]', v2 = [0 0 6 1 2]', v3 = [0 2 8 3 0]', v4 = [1 0 3 0 1]'
  % M = [3 0 0 -1 0;1 0 -2 0 0;4 6 -8 -3 0;0 1 -3 0 0;0 2 0 -1 0]   
elseif ex==7
   v1 = [1 1 1 3]', v2 = [0 8 6 7]', v3 = [3 5 6 7]', v4 = [0 2 0 1]', v5 = [0 0 1 2]'
  % M = [1 0 -3 0 0 0;1 8 -5 -2 0 0;1 6 -6 0 -1 0;3 7 -7 -1 -2 0]   
elseif ex==8
   v1 = [1 1 4 0 0]', v2 = [0 1 4 1 0]', v3 = [0 0 1 0 2]'
   v4 = [0 1 2 0 0]', v5 = [2 0 4 1 0]', v6 = [0 0 4 1 2]'
  % M = [1 0 0 0 -2 0 0;1 1 0 -1 0 0 0;4 4 1 -2 -4 -4 0;0 1 0 0 -1 -1 0;0 0 2 0 0 -2 0]   
elseif ex==9
   v1 = [1 6 0 0 0]', v2 = [0 0 1 2 8]', v3 = [3 0 0 0 4]'
   v4 = [0 0 2 0 3]', v5 = [0 0 0 1 2]', v6 = [0 1 0 0 1]'
  % M = [1 0 -3 0 0 0 0; 6 0 0 0 0 -1 0; 0 1 0 -2 0 0 0; 0 2 0 0 -1 0 0; 0 8 -4 -3 -2 -1 0]
elseif ex==10
   v1 = [1 1 0 0 0 0]', v2 = [0 0 2 10 35 0]', v3 = [0 1 0 0 4 2]'
   v4 = [1 0 0 0 4 1]', v5 = [0 0 1 0 0 3]', v6 = [0 3 0 1 12 0]', v7 = [0 0 0 0 1 2]'  
  % M = [1 0 0 -1 0 0 0 0; 1 0 1 0 0 -3 0 0; 0 2 0 0 -1 0 0 0;0 10 0 0 0 -1 0 0;0 35 4 -4 0 -12 -1 0; 0 0 2 -1 -3 0 -2 0]
elseif ex==11
   A = [1 0 1 0 20;0 1 -1 -1 0;1 1 0 0 80;0 0 0 1 60] 
   disp('Art error in first printing of text. The flow of 80 at C should be inward, not outward.')
elseif ex==12
   A = [1 0 -1 -1 0 40;1 1 0 0 0 200;0 1 1 0 -1 100;0 0 0 1 1 60] 
elseif ex==13
   A = [1 -1 0 0 0 0 -50;0 1 -1 1 -1 0 0;0 0 0 0 1 -1 60;0 0 0 1 0 -1 50;1 0 -1 0 0 0 -40]
elseif ex==14
   A = [1 -1 0 0 0 0 100;0 1 -1 0 0 0 -50;0 0 1 -1 0 0 120;0 0 0 1 -1 0 -150;0 0 0 0 1 -1 80;-1 0 0 0 0 1 -100]
else
   disp('No data for this exercise in Section 1.6.') 
end

% Problem 2 
% Solve the system of linear equation:
A = [3 4 -3 pi 1; 1 -1 5 -4 6; 3 -sqrt(5) -1 7 -9; 7 4 -7 8 2; 9 csc(3) -11 (-6/5) 2];
disp("Matrix A:")
disp(A)

b = [1; 12; -7; 2; 0];
disp("Constants Vector b:")
disp(b)

% Using inverse method: x = (A^-1)*b
x = A\b; % by using left division, the program cleanly takes the inverse of A and pre-multiplies it to b
disp("Solution Vector 'x' using inverse method")
disp(x)

% Using Cramer's Rule:
detA = det(A); % calculate the determinant of A
if detA ~= 0 % if determinant is not equal to zero then Cramer's Rule can be used
    for i = 1:length(b) % loops for each column of the matrix
        Ai = A; % create a copy of A
        Ai(:, i) = b; % replace the i-th column with vector b
        w(i) = det(Ai) / detA; % apply Cramer's Rule
    end
disp("Solution Vector 'w' using Cramer's Rule")
disp(w')
else
    disp("The system has no unique solution.");
end
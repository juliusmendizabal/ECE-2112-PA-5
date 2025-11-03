# ECE-2112-PA-5

**Made by: Julius Miguel S. Mendizabal | 2ECE-C**

The content of this repository contains the Programming Assignment 5 for our course "Advance Computer Programming" this S.Y. 2025-2026. This project covers two problems pertaining to Module 5 - Introduction to MATLAB Programming.

## **Intended Learning Outcomes (ILOs)**
1. To identify the codes and built-in functions used in MATLAB Programming
2. To be able to apply and use the different codes and built-in functions in creating a MATLAB program

## PROBLEM 1: Determine the differences between these three operations `A'` `transpose (A)` `A.'`
The matrices shown in the figure were used to analyze the distinction of the different operations.
<img width="437" height="78" alt="image" src="https://github.com/user-attachments/assets/29d2c225-dedd-4198-96b9-05880402c912" />

Intialize the given matrices:
```matlab
A = [2 0 1 8 0 -2; 3 4 7 3 7 6; -6 4 -1 2 5 9];
B = [(3+2j) (-6-7j) (1-j); (-5+2j) (3+j) (1+7j); (4-3j) (7+8j) (3j)];
```
Note: `;` semicolon was added after each statement so that the output will be hidden.

#### For Matrix A; to display and analyze the output, the following code was used:
```matlab
disp(A);
disp(A');
disp(transpose(A));
disp(A.');
```
#### Output:

<img width="284" height="484" alt="image" src="https://github.com/user-attachments/assets/56ff524b-0043-4903-bd39-7f8f013e01eb" />

Comparing the matrix outputs shown above, there is no difference between the three operations. All operations gave an identical transposed version of the original matrix.

#### For Matrix B; to display and analyze the output, the following code was used:

```matlab
disp(B);
disp(B');
disp(transpose(B));
disp(B.');
```
#### Output:

<img width="501" height="385" alt="image" src="https://github.com/user-attachments/assets/1d7830d0-359b-4307-a378-66a6207dc821" />

With these matrices, we can now see that the matrix output for `B'` was different, while `transpose(B)` and `B.'` output was the same. Observing the outputs, the `B'` operation took the transpose of the matrix and the complex conjugate of every element by getting the opposite sign of the imaginary part. For the `transpose(B)` and `B.` operation, rows/columns were swapped regardless of the complex conjugates.

In conclusion, we can label these operations as `A'` - **conjugate transpose**, while `transpose(B)` and `B.'` - **non-conjugate transpose**. In addition, the transpose commands only differs in matrices with complex numbers, whereas for matrices with only real numbers, there is no difference.

## PROBLEM 2: Solve the given linear equations simultaneously using two methods: (1) inverse method and (2) Cramer’s Rule
<img width="314" height="146" alt="image" src="https://github.com/user-attachments/assets/c70cef67-29d5-45c2-a25f-8a90d41eb5d6" />

Intialize the given matrices:
```matlab
A = [3 4 -3 pi 1; 1 -1 5 -4 6; 3 -sqrt(5) -1 7 -9; 7 4 -7 8 2; 9 csc(3) -11 (-6/5) 2]; % Coefficient Matrix A
b = [1; 12; -7; 2; 0]; % Constants Vector b
```

### Solving using the inverse method
The following code was used:
```matlab
x = A\b; % same as x = (A^-1)*b
```
By using left division, the program cleanly divides b by A from the left, just like solving for x in the form of Ax = b. 
Displaying the output, we automatically get the Solution Vector 'x' as shown below:

<img width="351" height="122" alt="image" src="https://github.com/user-attachments/assets/46203702-90af-4677-97cf-20d5a5bd64c7" />


### Solving using Cramer's Rule:
The following code was used:
```matlab
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
```

In Cramer's Rule, the determinant of the original matrix must not be equal to 0, since it will be used as a divisor and the matrix must be invertible, hence `detA = det(A);` was calculated and `if detA ~= 0` was used as a condition to proceed. In the case that the determinant was equal to 0, the loop for Cramer's Rule would not proceed. The code `for i = 1:length(b)` gives an iterable loop integer from 1 to the number of elements in `b`, this allows the program to loop for each column of the matrix. `Ai = A;` creates a copy of the original matrix A, so we can modify `Ai` without changing the original matrix A. In `Ai(:, i) = b;` the copy of the original matrix A is modified by replacing the i-th column of the matrix with vector b, following Cramer's Rule. Using the modified matrix and the original matrix, their determinants were divided to get the value of the unknown for each column, `w(i) = det(Ai) / detA;` takes the the value for each unknown and stores it to become a Solution Vector w.

Displaying the Solution Vector 'w' using `disp(w')` to show as a Column Vector:

<img width="347" height="127" alt="image" src="https://github.com/user-attachments/assets/c00a3fe4-a778-4c76-a4c0-e74b6ac1a57e" />

Comparing the two methods, the Solution Vector 'x' and 'w' showed the same output, giving the same values for the unknowns, and therefore solving the given system.



Thank you for reading! 

#### **README file Version History:**
October 3, 2025 - Uploaded the .m files.
October 4, 2025 - README file and .m files updated.

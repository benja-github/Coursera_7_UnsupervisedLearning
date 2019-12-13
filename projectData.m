function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

% BRL 17/9/16 Extract top K eigenvectors from Principal Components matrix
% This will create matrix of K columns by c rows, where c is number of 
% columns in X.  Transpose result so it has K rows and c columns. We can  
% then use it to multiply with X
Ureduce=U(:,1:K)';
% BRL 17/9/16 Multiply matrices Ureduce (K by c) and X Transpose (c by n)
% to compute X (K by n matrix).  Transpose result to give Z (n by K matrix 
%  n rows, K columns/dimensions))
Z=(Ureduce*X')';

% =============================================================

end

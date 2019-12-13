function [U, S] = pca(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = pca(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.
U = zeros(n);
S = zeros(n);

% ====================== YOUR CODE HERE ======================
% Instructions: You should first compute the covariance matrix. Then, you
%               should use the "svd" function to compute the eigenvectors
%               and eigenvalues of the covariance matrix. 
%
% Note: When computing the covariance matrix, remember to divide by m (the
%       number of examples).
%

% BRL 17/9/16 sigma should be a matrix with both dimensions the same as the
% number of features/columns in the input NOT the number of
% observations/rows

% BRL 17/9/16 Compute covariance matrix of data (X)
sigma=(1/m)*(X'*X);

% BRL 17/9/16 Use svd function to compute Principal Components 
% (U - matrix of eigenvectors, S - ???)
[U,S,V]=svd(sigma);

% =========================================================================

end

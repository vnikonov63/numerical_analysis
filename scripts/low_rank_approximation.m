A = imread('peppers.png')
A = rgb2gray(A);

B = double(A);

r = rank(B)
[U,S,V] = svd(B);

ranks = [1 8 16 32 64 r]
l = length(ranks)

for i = 1 : l
    k = ranks(i);

    approxB = U(:,1:k) * S(1:k, 1:k) * V(:, 1:k)';
    approxA = uint8(approxB);
    
    figure(1)
    subplot(2, 3, i)
    imshow(approxA)
    title(sprintf('rank %d approximation', k))
end    

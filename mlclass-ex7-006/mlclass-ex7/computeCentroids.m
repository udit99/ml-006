function centroids = computeCentroids(X, idx, K)
    centroids = zeros(K, size(X,2));

    for k = 1:K
        positions = find( idx == k );
        centroids(k,:) = sum(X(positions,:))./ size(positions,1);
    end
end

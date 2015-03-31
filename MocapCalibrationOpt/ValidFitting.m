function [meanErr] = ValidFitting(Pc, Pm, RotMatrices, R, t, v)
N = size(Pc,2);
Pr = zeros(3, N);
for i = 1:1:N
    Pr(:,i) = RotMatrices{i} * v + Pc(:,i);
end
Q = bsxfun(@plus, R * Pm, t);
meanErr = sum( sqrt(sum((Q - Pr).^2)) ) / N;
end
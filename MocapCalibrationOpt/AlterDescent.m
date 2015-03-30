function [R t v] = AlterDescent(Pc, Pm, RotMatrices, v0 )
N = size(Pc,2);
Pr = zeros(3, N);
iter = 0;
maxIter = 5;
v = v0;
while iter < maxIter
    iter = iter + 1;
    for i = 1:1:N
        Pr(:,i) = RotMatrices{i} * v + Pc(:,i);
    end
    [R t] = GetTransform(Pm, Pr)
    % Represent mocap points in robot base under current fitted transformation.
    Q = bsxfun(@plus, R * Pm, t);
    sum_v = zeros(3,1);
    for i = 1:1:N
        sum_v = sum_v + RotMatrices{i}' * (Q(:,i) - Pc(:,i));
    end
    v = sum_v / N
end

end


function [R t v] = AlterDescent(Pc, Pm, rand_angles, v0 )
N = size(Pc,2);
Pr = zeros(3, N);
iter = 0;
maxIter = 5;
v = v0;
while iter < maxIter
    iter = iter + 1;
    for i = 1:1:N
        R_pose = GenRotMatFromEuler(rand_angles(1,i), rand_angles(2,i), rand_angles(3,i));
        Pr(:,i) = R_pose * v + Pc(:,i);
    end
    [R t] = GetTransform(Pm, Pr)
    % Represent mocap points in robot base under current fitted transformation.
    Q = bsxfun(@plus, R * Pm, t);
    %v = AdjustVecObj(Pc, Q)
    sum_v = zeros(3,1);
    for i = 1:1:N
        R_pose = GenRotMatFromEuler(rand_angles(1,i), rand_angles(2,i), rand_angles(3,i));
        sum_v = sum_v + R_pose' * (Q(:,i) - Pc(:,i));
    end
    v = sum_v / N
end

end


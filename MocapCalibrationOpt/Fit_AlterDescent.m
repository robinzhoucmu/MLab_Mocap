% Shifting vector from tool center to mocap marker, assuming tool center
% has fixed rotational pose, e.g., always pointing downwards.
% Input:
% Pm: Columnar Matrix (3 * N) of Mocap marker points in Mocap frame.
% Pc: Columnar Matrix (3 * N) of robot tool center points in robot base frame. 
function [R t v] = Fit_AlterDescent(Pc, Pm, v0)
v = v0;
% Alterating procedure.
maxIter = 10;
iter = 0;
while iter < maxIter
    iter = iter + 1;
    % Marker point in base frame by shifting the tool center by v0. 
    Pr = Pc + v;
    [R t] = GetTransform(Pm, Pr);
    % Represent mocap points in robot base under current fitted transformation.
    Q = R * Pm
    v = AdjustVecObj(Pc, Q);
end

end
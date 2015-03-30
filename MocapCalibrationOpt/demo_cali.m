% Give initialization from physical measurement.
v0 = [0; 0; -133.68];
file_name = '../mocap_log.txt';

[RotMats, ToolPts, MocapPts] = ReadFromRosOutput(file_name);
[R_est t_est v_est] = AlterDescent(ToolPts, MocapPts, RotMats, v0)

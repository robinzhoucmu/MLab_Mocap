FILE(REMOVE_RECURSE
  "../msg_gen"
  "../src/Mocap/msg"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/Mocap/msg/__init__.py"
  "../src/Mocap/msg/_mocap_frame.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)

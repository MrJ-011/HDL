view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 20ns -step 1 -repeat forever -starttime 0ns -endtime 100ns sim:/and_gate/x 
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 10ns -step 1 -repeat forever -starttime 0ns -endtime 100ns sim:/and_gate/y 
WaveCollapseAll -1
wave clipboard restore

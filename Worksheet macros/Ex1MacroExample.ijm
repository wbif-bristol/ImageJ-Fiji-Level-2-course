run("Z Project...", "projection=[Max Intensity]");
run("Subtract Background...", "rolling=20");
run("Median...", "radius=2");
run("Auto Threshold", "method=Otsu");
run("Fill Holes");
run("Watershed");
run("Set Measurements...", "area centroid display redirect=None decimal=4");
run("Analyze Particles...", "size=50-500 show=[Count Masks] display");
run("glasbey");
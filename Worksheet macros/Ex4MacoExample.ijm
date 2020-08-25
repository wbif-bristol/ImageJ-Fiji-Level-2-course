run("Z Project...", "projection-[Max Intensity]");
run("Subtract Background...", "rolling=50 sliding");
run("Enhance Contrast", "saturated=0.35");
run("Gaussian Blur...", "sigma=2");
setAutoThreshold("Li dark");
run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=50-Infinity show=[Count Masks] display summerize");
run("glasbey");

Dialog.create("Dialog Box Segmentation");
Dialog.addMessage("Parameters");

arraySmooth = newArray("Gaussian Blur", "Median");
arrayThresh = newArray("Otsu dark", "Li dark", "IJ_IsoData dark", "Huang dark");

Dialog.addSlider("Smoothing Radius:",1,50,1);
Dialog.addChoice("Smoothing Method?", arraySmooth, "Gaussian Blur");
Dialog.addChoice("Threshold Method?", arrayThresh, "Otsu dark");
Dialog.show();

radius = Dialog.getNumber();
method = Dialog.getChoice();
threshMethod = Dialog.getChoice();

run("Z Project...", "projection=[Max Intensity]");
run("Subtract Background...", "rolling=20");
run(method+"...", "radius="+radius);
run("Auto Threshold", "method="+threshMethod);
run("Fill Holes");
run("Watershed");
run("Set Measurements...", "area centroid display redirect=None decimal=4");
run("Analyze Particles...", "size=50-500 show=[Count Masks] display");
run("glasbey");
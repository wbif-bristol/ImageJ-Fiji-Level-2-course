Dialog.create("Dialog Box Segmentation");
Dialog.addMessage("this is nonsense...");

arraySmooth=newArray("Gaussian Blur", "Median");
arrayThresh=newArray("Otsu dark", "Li dark", "IJ_IsoData dark", "Huang dark");

Dialog.addSlider("Smoothing Radius:",1,50,1);
Dialog.addChoice("Smoothing Method?", arraySmooth, "Gaussian Blur");
//Dialog.addSlider("Threshold Value:",1,255,100);
Dialog.addChoice("Thresholding Method?", arrayThresh, "Otsu dark");
Dialog.show();

radius=Dialog.getNumber();
method=Dialog.getChoice();
//thresh=Dialog.getNumber();
threshMethod=Dialog.getChoice();

run("Z Project...", "projection=[Max Intensity]");
run("Subtract Background...", "rolling=50 sliding");
run("Enhance Contrast", "saturated=0.35");
run(method+"...", "sigma="+radius);
setAutoThreshold(threshMethod);
run("Convert to Mask");
run("Watershed");
run("Analyze Particles...", "size=50-Infinity show=[Count Masks] display summarize");
run("glasbey");

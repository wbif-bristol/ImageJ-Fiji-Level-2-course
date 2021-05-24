Dialog.create("MOAM");
Dialog.addMessage("This is a macro, enter some parameters");

arrayFilter = newArray("Median...","Mean...","Gaussian...");
Dialog.addSlider("Rolling ball radius: ", 1, 100, 50);
Dialog.addChoice("Filter type: ", arrayFilter, "Median...")
Dialog.addSlider("Filter radius: ", 1, 10, 2);
Dialog.addSlider("Size filter: ", 1,500, 150);
Dialog.show();

title = getTitle();
rollingBallSize = Dialog.getNumber();
filterType = Dialog.getChoice();
smoothingFilterSize = Dialog.getNumber();
sizeFilter = Dialog.getNumber();

run("Z Project...", "projection=[Max Intensity]");
run("Subtract Background...", "rolling="+rollingBallSize);
run(filterType, "radius="+smoothingFilterSize);
run("Auto Threshold", "method=Otsu");
run("Fill Holes");
run("Watershed");
run("Set Measurements...", "area centroid display redirect=None decimal=4");
run("Analyze Particles...", "size="+sizeFilter+"-Infinity pixel show=[Count Masks] display exclude clear");
run("glasbey");


N=nResults;
title=getTitle();


for (i=0; i<N; i++)	{
	x1 = getResult("X",i);
	y1 = getResult("Y",i);
	nnDistance = 1000;
	
	for (j=0; j<N; j++) {
		if (j != i) {				
			x2 = getResult("X",j);
			y2 = getResult("Y",j);
			distance = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
			
			if (distance < nnDistance) {
				nnDistance = distance;
			}
		}			
	}

	toUnscaled(x1, y1);
	setResult("NNDistance", i, nnDistance);
	setColor("black");
	Overlay.drawString(nnDistance, x1, y1, 0);
	
	Overlay.show();

}
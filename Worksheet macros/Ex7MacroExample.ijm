Dialog.create("MOAM");
Dialog.addMessage("this is a macro, enter some parameters");

arrayFilter=newArray("Median...","Mean...","Gaussian...");
Dialog.addSlider("Rolling ball radius: ", 1, 100, 50);
Dialog.addChoice("Filter type: ", arrayFilter, "Median")
Dialog.addSlider("Smoothing filter radius: ", 1, 10, 2);
Dialog.addSlider("Size filter: ", 1,500, 150);
Dialog.show();

title = getTitle();
rollingBallSize=Dialog.getNumber();
filterType=Dialog.getChoice();
smoothingFilterSize=Dialog.getNumber();
sizeFilter=Dialog.getNumber();


run("Set Scale...", "distance=0 known=0 pixel=1 unit=pixel");
run("Set Measurements...", "area mean standard min centroid center redirect=None decimal=3");
selectWindow(title);
run("Z Project...", "projection=[Max Intensity]");
run("Subtract Background...", "rolling="+rollingBallSize);
run(filterType, "radius="+smoothingFilterSize);
run("Auto Threshold", "method=Otsu white");
run("Invert");
run("Fill Holes");
run("Watershed");
run("Analyze Particles...", "size="+sizeFilter+"-Infinity pixel show=[Count Masks] display exclude clear summarize");
run("glasbey");



N=nResults;
title=getTitle();


for (i=0; i<N; i++)
	{
		x1=getResult("X",i);
		y1=getResult("Y",i);
		distance=1000;
		
		for (j=0; j<N; j++)
		{
			if (j!=i)
			{				
				x2=getResult("X",j);
				y2=getResult("Y",j);
				distanceTemp= sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
				
				if (distanceTemp<distance)
				{
					distance=distanceTemp;
				}
			}			
		}
		
		setResult("NNDistance", i, distance);
		setColor("black");
		Overlay.drawString(distance, x1, y1, 0);
		
		Overlay.show();

		//saveAs("tiff","\\\\ads.bris.ac.uk\\filestore\\myfiles\\Staff13\\da14205\\Desktop\\test2\\"+title+".tif");
		//saveAs("Results", "\\\\ads.bris.ac.uk\\filestore\\myfiles\\Staff13\\da14205\\Desktop\\test2\\"+title+".csv");
		
		

	}


N = nResults();

for (i=0; i<N; i++) {
	x1 = getResult("X",i);
	y1 = getResult("Y",i);
	nnDistance = 1000;
	
	for (j=0; j<N; j++) {
		if (j != i) {				
			x2 = getResult("X",j);
			y2 = getResult("Y",j);
			distance = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
			
			if (distance < nnDistance) {
				nnDistance = distance;
			}
		}			
	}
	
	setResult("NNDistance", i, nnDistance);

}
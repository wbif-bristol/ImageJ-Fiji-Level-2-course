N = nResults();

x1 = getResult("X",0);
y1 = getResult("Y",0);
nnDistance = 1000;

for (j=0; j<N; j++) {
	if (j != 0) {			
		x2 = getResult("X",j);
		y2 = getResult("Y",j);
		distance = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));
		
		if (distance < nnDistance) {
			nnDistance = distance;
		}
	}			
}

print("The nearest neighbour distance is: " + nnDistance + " pixels");

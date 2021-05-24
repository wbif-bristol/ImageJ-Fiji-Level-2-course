x1 = getResult("X",0);
y1 = getResult("Y",0);

x2 = getResult("X",1);
y2 = getResult("Y",1);

nnDistance = sqrt((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1));

print("The distance between the two nuclei is: " + nnDistance + " pixels");
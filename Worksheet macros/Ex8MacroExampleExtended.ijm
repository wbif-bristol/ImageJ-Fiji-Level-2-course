Dialog.create("Dialog Box Testing");
Dialog.addMessage("this is nonsense");

arrayMonth = newArray("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
Dialog.addString("What day is it?", "Wednesday");
Dialog.addSlider("What date is it?",1,31,14);
Dialog.addChoice("What month is it?", arrayMonth, "January");
Dialog.show();

day = Dialog.getString();
date = Dialog.getNumber();
month = Dialog.getChoice();

if (date==1 || date==21 || date==31) {
	dateSuffix="st";
} else if (date==2 || date==22) {
	dateSuffix="nd";
} else if (date==3 || date==23) {
	dateSuffix="rd";
} else {
	dateSuffix="th";
} 

print("The day today is " + day + " " + date + dateSuffix + " " + month);
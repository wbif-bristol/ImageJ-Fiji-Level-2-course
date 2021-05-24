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

print("The day today is " + day + " " + date + "th " + month);
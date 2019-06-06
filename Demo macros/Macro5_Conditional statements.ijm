// OBJECTIVE: This macro demonstrates how to use conditional statements to execute
// a section of code, only if a specific criterion is met.  A different section can
// be run if the condition is failed (the "else" code).

// EXAMPLE: Following detection of objects in an image, you are running an analysis
// protocol.  You could contain the analysis code within a conditional statement, so
// it only executes if you detected at least one object.  If no objects were detected
// you could display a message in the log window saying this was the case.

// NOTE: Conditional statements are 
//     	== EQUAL TO
// 		!= NOT EQUAL TO
// 		< LESS THAN
//		<= LESS THAN OR EQUAL TO
// 		> GREATER THAN
// 		>= GREATER THAN OR EQUAL TO

// NOTE: Conditional statements can have multiple criteria, which are separated by && 
// for AND and || for OR.

// NOTE: The code to be executed is contained within curly brackets.


// CODE:
// We use the random() function to generate a random number between 0 and 1 (note how
// this function doesn't take any arguments).  The number is assigned to a variable.
random_number = random();

// We set a threshold value that the random number will be tested against
threshold = 0.7;

// Using a conditional statement to determine if the random number is less than 0.5.
// If it is, this is stated in the log window.  Note how the string and number are
// concatenated directly in the print function argument; this is permitted, but you 
// need to be careful not to make code too difficult to understand (sometimes more
// lines are better than fewer).
if (random_number < threshold) {
	print(random_number + " is less than " + threshold);
	
} else {
	print(random_number + " is greater than (or equal to) " + threshold);
	
}

// Adding a blank line to the log window
print(" ");
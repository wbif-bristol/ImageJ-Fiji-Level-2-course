// OBJECTIVE: This macro demonstrates how to use for loops to repeatedly execute a
// section of code a specific number of times.  The syntax of a for loop is slightly
// more complicated than a while loop, in that we have to create a counter and state
// how this should behave.

// EXAMPLE: You have an array containing detected object areas and want to display
// these in the log window for the user to evaluate.  A for loop could be used as you
// know the final number of iterations to be performed (the size of the array).

// NOTE: The counter is itself a number-type variable, so can be accessed from within
// the for loop.  Since it's a variable, the counter can be assigned any name; 
// however, i is commonly used.

// NOTE: The for loop requires the user to input the starting point of the counter, 
// the condition for termination of the loop and the behaviour of the counter on each
// iteration (typically i++, which increases by 1 each time).  These statements must
// be in that order and separated by a semicolon.


// CODE:
// Setting the total number of iterations
num_iterations = 5;

// Creating a for loop, where the counter is called i
for (i = 0; i < num_iterations; i++) {
	// Displays the current iteration number (we can access the current value of i
	// like we would with any other variable)
	print("Current iteration " + i);
	
}

// Adding a blank line to the log window
print(" ");
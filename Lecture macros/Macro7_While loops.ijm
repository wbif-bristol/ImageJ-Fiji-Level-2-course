// OBJECTIVE: This macro demonstrates how to use while loops to repeatedly execute a
// section of code until a condition is met.

// EXAMPLE: The Costes thresholding algorithm used in colocalisation analysis (and 
// included in Fiji's Coloc2 plugin) measures colocalisation for pixels below a 
// continuously decreasing intensity threshold until colocalisation (the PCC value) 
// is less than zero.  Here, the section of code which decreases the intensity 
// threshold and runs the colocalisation measurement could be contained within a
// while loop.


// CODE:
// The following example executes in a similar manner to that in Macro5 (conditional
// statements); however, here it continues to test random numbers until the condition
// is met.

// We use the random() function to generate a random number between 0 and 1, which
// is assigned to a variable.
random_number = random();

// We set a threshold value that the random number will be tested against
threshold = 0.7;

// The conditional statement in the while loop tests if the random number is less
// than the threshold.
while (random_number < threshold) {
	print(random_number + " is less than " + threshold);

	// Generating a new random number assigned to the same variable
	random_number = random();	
	
}

// Once we have a random number greater than the threshold we print this in the log
print(random_number + " is greater than (or equal to) " + threshold);

// Adding a blank line to the log window
print(" ");
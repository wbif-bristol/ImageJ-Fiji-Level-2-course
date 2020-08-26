// OBJECTIVE: This macro demonstrates how to create custom functions, thus allowing
// for quick and easy re-use of code.  If you use the same (or very similar) sequences
// of commands throughout your macro, you can write it into a function, meaning (if 
// necessary), you only need modify the code once.

// EXAMPLE: A function to measure the distance between two sets of XY coordinates 
// (corresponding to pre-detected object centroids).  The function would take the two XY
// coordinates and return the straight-line (Euclidean) distance between the two.

// NOTE: Optionally return values from the function using a "return" statement.  Returned
// values must be 

// NOTE: The code to be executed is contained within curly brackets.


// CODE:
// First, we define the function.  The function here will add two numbers passed in as 
// arguments ("num_1" and "num_2).  We get to name the function following the usual naming
// rules (don't start with a number, no whitespace characters).  As convention, function 
// names use camelcase (no spaces/underscores between words, capitalise first letter of 
// all but the first word).
function addNumbers(num_1, num_2) {

	 // Inside the curly braces we write the code to be executed.  Here, this is simply
	 // adding the input numbers together and assigning them to a new variable, "result_num".
     result_num = num_1 + num_2;

     // We want to use the result value in our macro, so we return it.
     return result_num;
     
}

// Now, we can use our function as we would any other function.  In this example, I'm
// directly inserting numbers, but we could replace "3" and "5" with numeric variables.
sum_number = addNumbers(3, 5);

// Displaying our output (should show "8")
print("3 + 5 = " + sum_number);

// Running a few more examples
ex_1 = addNumbers(5,-2);
print("5 + -2 = " + ex_1);

ex_2 = addNumbers(0,0);
print("0 + 0 = " + ex_2);

ex_3 = addNumbers(2,10);
print("2 + 10 = " + ex_3);

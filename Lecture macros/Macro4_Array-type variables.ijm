// OBJECTIVE: This macro demonstrates how to work with array-type variables, in 
// particular, how to create them.  Arrays are one-dimensional tables.  Each element 
// is accessed using an index value (positive, non-zero integer).  Arrays can store 
// either numbers or strings, or a mixture of the two.

// EXAMPLE: The plot function requires two arrays: one for x-values and one for 
// y-values.  

// EXAMPLE: ImageJ macros can display dialog (options) boxes.  If you want to add a
// drop-down menu to your dialog box you need to specify the items to be included as
// an array of strings.

// NOTE: Unlike number and string variables, where you're only assigning a single 
// item, arrays must be initialised.  Initialisation is used to create either pre-
// filled or empty arrays (below are examples of both processes).

// NOTE: Irrespective of how the array was created, you can change its contents later
// on.

// NOTE: Indexing in ImageJ (and the majority of programming languages) is "zero-
// based", which means numbering starts at 0.

// NOTE: Array-type variable names follow the same conventions you've seen before 
// with number and string-type variables.


// CODE:
// To create a pre-filled array, instead of telling ImageJ how many elements will have
// you tell it what the contents will be.  The following line creates a 4-element
// array filled with numbers.
num_array = newArray(42.0,2.9,56.3,43.2);

// The following line creates a 3-element array filled with strings.
string_array = newArray("str1","str2","str3");

// To create an empty array you must use the newArray function (we will cover 
// functions in detail shortly).  You must tell ImageJ how many elements will be in
// the array.
my_array = newArray(3);

// To set the value of an element you must use its index.  Somewhat confusingly, this 
// value is 0 for the first element, 1 for the second element, 2 for the third element
// and so on.  The following three lines will set the elements of our array.
my_array[0] = "string to store";
my_array[1] = "another string";
my_array[2] = "final string";

// Data is accessed similarly.  In the following line we take the three strings 
// stored in my_array, concatenate them and display them in the log window.
concatenated_string = my_array[0] + ", " + my_array[1] +", " + my_array[2];
print(concatenated_string);

// Adding a blank line to the log window
print(" ");

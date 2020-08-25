// OBJECTIVE: This macro demonstrates how to work with string-type variables.
// As with number-type variables, these can be used to store a value, which is 
// recalled later.

// EXAMPLE: Some functions in ImageJ require strings as inputs.  One example is Auto
// Threshold, which requires the user to include the thresholding method (Otsu, Mean,
// Intermodes, etc.).

// NOTE: As you saw in Macro1, strings are text sequences surrounded by quotation
// marks.

// NOTE: Strings can be linked together using the + symbol in a process called 
// "concatenation"

// NOTE: String-type variable names follow the same conventions as number-type 
// variables (must contain no whitespace and must start with a letter).

// NOTE: String and number-type variables can be concatenated together, which results
// in a string (the numeric property of the number is lost).


// CODE:
// This sets the variable called string_var to the text "your string", then displays
// it in the log window.
string_var = "your string";
print("The text stored in string_var:");
print(string_var);

// Strings can be combined together (concatenated).  Here we assign two string-type
// variables, concatenate them and store the result to a new variable.  The contents
// of this new variable are then displayed in the log window.
my_var_1 = "first string";
my_var_2 = "second string";
my_var_3 = my_var_1 + " " + my_var_2;

print("The concatenated strings:");
print(my_var_3);

// Adding a blank line to the log window
print(" ");
// OBJECTIVE: This macro demonstrates how to work with number-type variables.
// Here, numbers are assigned a reference name.  The number can be used later on
// using this reference name.

// EXAMPLE: You can store parameters at the beginning of a macro, before they are
// needed.  The parameters are then used in the code by stating the reference name, 
// rather than constantly-retyping the value.  This allows you to keep all the
// parameters in one, easy to find place.  Also, if the value is used in more than
// one line it means you only need to change it once.

// NOTE: Numbers stored as variables behave like explicitly-typed numbers (i.e. you
// can perform mathematical operations using them).

// NOTE: Variable names can be whatever you want, but must not contain whitespace
// characters and must start with a letter (although they can contain numbers 
// thereafter).

// NOTE: Variable names aren't written using quotation marks.  This identifies them as
// different from strings (text sequences).

// NOTE: Any variables created within a macro are lost when the macro finishes.  This
// is the same for the other type of variables we see in the coming demos.


// CODE:
// This sets the variable called my_num to the value 42.  It can then be used in 
// the command we saw in Macro 1 to display the number in the log window.
num_var = 42;
print("The number stored in num_var:");
print(num_var);

// Number-type variables can be used interchangeably with explicity-typed numbers.
// Here we assign two variables the values 10 and 5, then use these in a calculation
// and assign the resulting value to another variable.
my_var_1 = 10;
my_var_2 = 5;

my_var_3 = (my_var_1 + my_var_2) * 7;

print("The number we get from our calculation:");
print(my_var_3);

// Adding a blank line to the log window
print(" ");
// OBJECTIVE: This macro demonstrates how to display messages.  This is useful if 
// you want to know what step is currently being processed, or to check a value 
// being used (e.g. an intensity threshold)

// EXAMPLE: You have automatically calculated an intensity threshold and want to
// display what this value is to the user (this is actually an option in the Auto
// Threshold function of ImageJ).

// NOTE: This is a comment
// Anything after "//" is ignored by ImageJ
// You can write messages here describing the macro

// NOTE: All lines of code in a macro (with a few exceptions we'll see later) end
// with a semicolon.  This tells ImageJ where the end of the current command is.  


// CODE:
// The command below will display "Hello World!" in the ImageJ log window.
// The quotation marks tell ImageJ the characters are text. (In programming, 
// text is referred to as a string)
print("Hello World!");

// The log window can also display numbers.  
// Numbers alone don't require quotation marks.
print(42);

// Adding a blank line to the log window
print(" ");
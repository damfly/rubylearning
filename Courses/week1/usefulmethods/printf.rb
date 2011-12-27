printf("Number: %5.2f,\nString: %s\n", 7.18, "Coucou Damien")

# % is an operator
# %[flag][width][.precision]type defines the format to be applied to the element after the %
#in the example below we have :
#in %05d, 0 is the flag : Spaces should be padded with 0 and not spaces
#         5 is the width: we want a string of 5 characters maximum
#         d is the type : it converts the argument (123 here) into a decimal number
#
puts "%05d" % 123 #=> Prints out 00123


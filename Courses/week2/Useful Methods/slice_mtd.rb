=begin
  * Name: slice_mtd.rb
  * Description : useful ruby String method : slice  
  * Author: Damien HOULLE
  * Date: 27/12/201
=end
# The String slice method, if passed a single Fixnum, returns the code of the character at that position
# (whereas in version 1.9, it returns the character at the position). 
# If passed two Fixnum objects, returns a substring starting at the offset given by the first, and a length given by the second.


a = "hello there"
puts a.slice(1) # => e
puts a.slice(1,3) # => "ell"
puts a.slice(-3,2) # => "er"
puts a.slice(0) # => h

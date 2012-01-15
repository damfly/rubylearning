require 'fileutils'
require 'tempfile'
require_relative 'prompt'
#week3
#exercise2

#insert word into a file given by the user

def update_file(filename, old, replacement)

#filename = (File.expand_path(filename))

#file_temp = Tempfile.new('temp')

FileUtils.mv(filename, filename + '.temp')

File.open(filename, 'w') do |line|

  IO.foreach(file_temp) do |line_temp|
    line_temp.gsub!(/#{old}/, replacement) if line_temp =~ /#{old}/  
    line << line_temp
  end

end

FileUtils.rm(filename + ".temp", :force => true)

#file_temp.unlink

end

file_path = prompt("Please give the name of the file the word you would like to update and the update")
old_sentence = prompt("Please provide sentence you wish to replace")
new_sentence = prompt("Please provide the replacement")
update_file(file_path, old_sentence, new_sentence)
puts "the #{file_path} file has been updated with '#{new_sentence}'!"

=begin
#Let's open the file
File.open(filename, 'r+') do |f|

  #Let's read the content of the file and put it into a variable to alter the content
  content = f.read
  #Once we read the file, the current offsite is put at the end of the file, we need to reinitailize it to 0 to write in the file accordingly
  f.pos = 0
  #then we write in the file with the altered content string (using gsub! string method)
  f.write(content.gsub!(/word/, "inserted word"))

end
=end


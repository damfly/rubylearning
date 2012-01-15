#Exercise3. Make use of the class Dir for the following -

#Display your current working directory.

#Dir.chdir('/Home/Caroline')


puts Dir.pwd

#Create a new directory tmp under your working directory.

#Dir.mkdir('tmp')


#Change your working directory to tmp

current_directory = Dir.pwd

Dir.chdir(current_directory + '/tmp')


#Display your current working directory.

puts Dir.pwd

#Go back to your original directory.

Dir.chdir(current_directory)
puts Dir.pwd


#Delete the tmp directory.

Dir.rmdir('tmp')

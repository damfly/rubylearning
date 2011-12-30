=begin
  * Name: challenge_week2.rb
  * Description : process a line
  * Author: Damien HOULLE
  * Date: 27/12/2012
=end
require_relative 'lines_to_be_aligned'

def line_alignement(lines)

  # intialization of the variable lines_aligned that will be used to return the lines aligned
  lines_aligned = ""

  # let's align the lines. For each line within the collection, take the sentence and the index. To align properly we need to format the
  # space between the word Line and the index of the line
  lines.each_line.with_index(1) do |sentence, index|
    lines_aligned <<  "Line %#{lines.each_line.count.to_s.length}d: %s" % [index, sentence]
  end

  #return the lines with proper alignement and index number
  lines_aligned
end

lines = ""
1000.times do |x|
  lines << "#{(x+1).to_s}\n"
end


puts line_alignement(lines)

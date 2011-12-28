begin
  puts x.inspect
rescue
  puts $!
end

if false
  x = 'lol'
end

puts x.inspect

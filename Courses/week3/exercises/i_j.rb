for i, j in [[1, 2], [3, 4], [5, 6]]
p [i, j]
end

# => ANSWER 3
=begin
1. [[1, 2], nil]
[[3, 4], nil]
[[5, 6], nil]
 
2. [nil, [1, 2]]
[nil, [3, 4]]
[nil, [5, 6]]
 
3. [1, 2]
[3, 4]
[5, 6] 
 
4. Syntax Error
=end

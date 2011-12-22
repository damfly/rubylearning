y = false
z = true
x = y or z 
puts x #=>true FAUX le résultat est FALSE car le "=" est prévalent sur le "or"
(x = y) or z 
puts x #=>false OK
x = (y or z)
puts x #=>true OK

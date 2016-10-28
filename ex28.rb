print "01: ", (true && true), ", guess: ", true
print "\n02: ", (false && true), ", guess: ", false
print "\n03: ", (1 == 1 && 2 == 1), ", guess: ", false
print "\n04: ", ("test" == "test"), ", guess: ", true
print "\n05: ", (1 == 1 || 2 != 1), ", guess: ", true
print "\n06: ", (true && 1 == 1), ", guess: ", true
print "\n07: ", (false && 0 != 0), ", guess: ", false
print "\n08: ", (true || 1 == 1), ", guess: ", true
print "\n09: ", ("test" != "testing"), ", guess: ", true
print "\n10: ", (1 != 0 && 2 == 1), ", guess: ", false
print "\n11: ", ("test" != "testing"), ", guess: ", true
print "\n12: ", ("test" == 1), ", guess: ", false
print "\n13: ", (!(true && false)), ", guess: ", true
print "\n14: ", (!(1 == 1 && 0 != 1)), ", guess: ", false
print "\n15: ", (!(10 == 1 || 1000 == 1000)), ", guess: ", false
print "\n16: ", (!(1 != 10 || 3 == 4)), ", guess: ", false
print "\n17: ", (!("testing" == "testing" && "Zed" == "Cool Guy")), ", guess: ", true
print "\n18: ", (1 == 1 && (!("testing" == 1 || 1 == 0))), ", guess: ", true
print "\n19: ", ("chunky" == "bacon" && (!(3 == 4 || 3 == 3))), ", guess: ", false
print "\n20: ", (3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))), ", guess: ", false

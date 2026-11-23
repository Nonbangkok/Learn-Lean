def double (n : Nat) : Nat := n * 2

#eval double 3 + 1
#eval double (3 + 1)
#eval double (double 3)

def square (n : Nat) : Nat := n*n

#eval square 4

def introduce (name : String) : String := s!"My name is {name}. Nice to meet you."

#eval introduce "Nonbangkok"
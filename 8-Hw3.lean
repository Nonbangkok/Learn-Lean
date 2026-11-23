def min' (a b : Nat) : Nat := if a < b then a else b

#eval min' 3 9 -- 3

def isAdult (age : Nat) : Bool := age >= 18

#eval isAdult 20 -- true
#eval isAdult 15 -- false

def ticketPrice (age : Nat) : Nat :=
  if age >= 60 then  80
  else if age >= 12 then 200
  else 100

#eval ticketPrice 8  -- 100
#eval ticketPrice 30 -- 200
#eval ticketPrice 65 -- 80
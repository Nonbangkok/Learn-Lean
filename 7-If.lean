def add (a : Nat) (b : Nat) : Nat := a + b
def area (w h : Nat) : Nat := w * h

#eval add 3 4 -- 7
#eval area 3 5 -- 15

#eval 3 > 2 -- true
#eval 3 == 3 -- true
#eval 3 != 3 -- false

def isEven (n : Nat) : Bool := n % 2 == 0

#eval isEven 4 -- true
#eval isEven 7 -- false

def max' (a b : Nat) : Nat := if a > b then a else b

#eval max' 3 9 -- 9
#eval max' 10 2 -- 10

def describe (n : Nat) : String := if isEven n then s!"{n} is Even" else s!"{n} is Odd"

#eval describe 4 -- "4 is Even"
#eval describe 9 -- "9 เป็is Odd่"

def grade (score : Nat) : String :=
  if score >= 80 then "A"
  else if score >= 70 then "B"
  else if score >= 60 then "C"
  else "F"

#eval grade 85 -- "A"
#eval grade 72 -- "B"
#eval grade 30 -- "F"

structure Student where
  name : String
  score : Nat
deriving Repr

def a : Student := { name := "Manee", score := 85 } -- full
def b : Student := ⟨"Piti", 55⟩ -- short

#eval a -- { name := "Manee", score := 85 }
#check a -- a : Student

def passed (s : Student) : Bool := s.score >= 60

#eval passed a    -- true
#eval passed b    -- false

def bonus (s : Student) : Student := { s with score := s.score + 10 }

#eval bonus b -- { name := "Piti", score := 65 }
#eval b -- { name := "Piti", score := 55 }

def students : List Student := [
  { name := "Manee", score := 85 },
  { name := "Piti", score := 55 },
  { name := "Chujai", score := 72 }
]

#eval students.filter passed |>.map (·.name) -- ["Manee", "Chujai"]
#eval students.map (·.score) |>.foldl (· + ·) 0 -- 212

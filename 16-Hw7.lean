structure Point where
  x : Int
  y : Int
deriving Repr

def addP (p q : Point) : Point := { x := p.x + q.x, y := p.y + q.y }
#eval addP { x := 1, y := 2 } { x := 3, y := -5 } -- { x := 4, y := -3 }

structure Student where
  name : String
  score : Nat
deriving Repr

def students : List Student := [
  { name := "Manee", score := 85 },
  { name := "Piti", score := 55 },
  { name := "Chujai", score := 72 }
]

def giveBonusAll (ss : List Student) : List Student := ss.map (fun s => {s with score := s.score + 10})

#eval giveBonusAll students -- score += 10

def average (ss : List Student) : Nat := (ss.foldl (fun acc n => acc + n.score) 0) / ss.length

#eval average students -- 212 / 3 = 70

def topStudent (ss : List Student) : String := ss.foldl (fun acc n => if n.score > acc.score then n else acc) {name := "", score := 0} |>.name

#eval topStudent students -- "Manee"
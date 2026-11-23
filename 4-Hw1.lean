#check 7.0
#check (5 : Int)
#check "5"

#eval (10 - 20 : Int)
#eval 10 - 20 + 5

-- #eval "Lean" + 1

#eval "Lean" ++ "1" -- "Lean1"
#eval "Lean" ++ toString 1 -- "Lean1" (toString cast value to String)
#eval s!"Lean {1 + 1}" -- "Lean 2"

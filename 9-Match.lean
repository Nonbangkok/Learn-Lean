def dayName (n : Nat) : String :=
  match n with
    | 0 => "Sunday"
    | 1 => "Monday"
    | 2 => "Tuesday"
    | _ => "Unknown"

#eval dayName 1 -- "Monday" 
#eval dayName 9 -- "Unknown"

def pred' (n : Nat) : Nat :=
  match n with
    | 0 => 0
    | k + 1 => k

#eval pred' 5 -- 4
#eval pred' 0 -- 0

-- def sumTo (n : Nat) : Nat :=
--   match n with
--     | 0 => 0
--     | _ => n + sumTo (n-1)

def sumTo (n : Nat) : Nat :=
  match n with
    | 0 => 0
    | k + 1 => (k + 1) + sumTo k

-- def sumTo (n : Nat) : Nat :=
--   if n = 0 then 0 else n + sumTo (n - 1)

#eval sumTo 3 -- 6
#eval sumTo 100 -- 5050

-- def loop (n : Nat) : Nat := loop n + 1 
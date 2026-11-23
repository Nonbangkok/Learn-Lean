def factorial (n : Nat) : Nat :=
  match n with
    | 0 => 1
    | k + 1 => (k + 1) * factorial k

#eval factorial 5 -- 120
#eval factorial 0 -- 1

def power (b n : Nat) : Nat :=
  match n with
    | 0 => 1
    | k + 1 => b * power b k

#eval power 2 10 -- 1024
#eval power 3 0 -- 1

def isEven' (n : Nat) : Bool :=
  match n with
    | 0 => true
    | 1 => false
    | k + 2 => isEven' k

#eval isEven' 4    -- true
#eval isEven' 7    -- false

def powFast (b n : Nat) : Nat :=
  if n = 0 then 1
  else
    let half := powFast b (n / 2)
    if n % 2 == 0 then half * half else half * half * b

#eval powFast 2 10 == power 2 10
#eval powFast 7 13 == power 7 13

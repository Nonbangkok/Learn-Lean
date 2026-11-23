def doubleAll2 (xs : List Nat) : List Nat := xs.map (fun n => n * 2)
def mySum2 (xs : List Nat) : Nat := xs.foldl (fun acc x => acc + x) 0
def countEven2 (xs : List Nat) : Nat := (xs.filter (fun x => x % 2 == 0)).length

#eval doubleAll2 [1,2,3] -- [1,2,6]
#eval mySum2 [1,2,3] -- 6
#eval countEven2 [1,2,3] -- 1

def myFilter (f : Nat -> Bool) (xs : List Nat) : List Nat :=
  match xs with
    | [] => []
    | x :: rest => if f x then x :: myFilter f rest else myFilter f rest

#eval myFilter (· > 2) [1, 2, 3, 4] -- [3,4]

def sumOddSquares (xs : List Nat) : Nat := 
  xs.filter (· % 2 == 1) |>.map (fun x => x * x) |>.foldl (· + ·) 0

#eval sumOddSquares [1, 2, 3, 4, 5] -- 1 + 9 + 25 = 35
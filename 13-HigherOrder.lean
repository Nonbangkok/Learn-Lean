def double (n : Nat) : Nat := n * 2 

#check double -- double (n : Nat) : Nat

#check fun (n : Nat) => n * 2 -- fun n => n * 2 : Nat → Nat
#eval (fun (n : Nat) => n * 2) 5 -- 10

def applyTwice (f : Nat → Nat) (x : Nat) : Nat := f (f x)

#eval applyTwice double 3 -- 12
#eval applyTwice (fun n => n + 10) 1 -- 21

def myMap (f : Nat -> Nat) (xs : List Nat) : List Nat :=
  match xs with
    | [] => []
    | x :: rest => f x :: myMap f rest

#eval myMap double [1, 2, 3] -- [2, 4, 6]
#eval myMap (fun n => n * n) [1, 2, 3] -- [1, 4, 9]

#eval [1, 2, 3].map double -- [2, 4, 6]
#eval [1, 2, 3].map (fun n => n * n) -- [1, 4, 9]
#eval [1, 2, 3].map (fun n => s!"number {n}") -- ["number 1", "number 2", "number 3"]
#eval [1, 2, 3].map (· * 10) -- [10, 20, 30]

#eval [1, 2, 3, 4, 5, 6].filter (fun n => n % 2 == 0) -- [2, 4, 6]
#eval [1, 2, 3, 4, 5, 6].filter (· > 3) -- [4, 5, 6]

#eval [1, 2, 3, 4].foldl (fun acc x => acc + x) 0 -- 10
#eval [1, 2, 3, 4].foldl (· + ·) 0 -- 10
#eval [2, 3, 4].foldl (· * ·) 1 -- 24

#eval ([1, 2, 3, 4, 5, 6].filter (· % 2 == 0)).length -- 3
#eval [1,2,3]
#check [1,2,3]
#check ["a","b"]
-- #check [1, "a"]

#eval [1, 2, 3].length -- 3
#eval [1, 2, 3].reverse -- [3, 2, 1]
#eval [1, 2] ++ [3, 4] -- [1, 2, 3, 4] (++ can also use with List)

#eval 0 :: [1, 2, 3] -- [0, 1, 2, 3]
#eval 1 :: 2 :: 3 :: [] -- [1, 2, 3]
-- [1, 2, 3]  =  1 :: (2 :: (3 :: []))

def mySum (xs : List Nat) : Nat :=
  match xs with
    | [] => 0
    | x :: rest => x + mySum rest

#eval mySum [1,2,3,4] -- 10

def myLength (xs : List Nat) : Nat :=
  match xs with
    | [] => 0
    | _ :: rest => 1 + myLength rest

#eval myLength [5,6,7] -- 3

def firstOr (xs : List Nat) : Nat :=
  match xs with
    | [] => 0
    | x :: _ => x

#eval firstOr [9,8] -- 9
#eval firstOr [] -- 0


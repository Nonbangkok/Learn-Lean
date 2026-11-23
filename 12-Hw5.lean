def myProduct (xs : List Nat) : Nat :=
  match xs with
    | [] => 1
    | x :: rest => x * myProduct rest

#eval myProduct [2,3,4] -- 24
#eval myProduct [] -- 1

def contains (n : Nat) (xs : List Nat) : Bool :=
  match xs with
    | [] => false
    | x :: rest => (x==n) || contains n rest 

#eval contains 3 [1, 2, 3] -- true
#eval contains 5 [1, 2, 3] -- false

def doubleAll (xs : List Nat) : List Nat :=
  match xs with
    | [] => []
    | x :: rest => x*2 :: doubleAll rest

#eval doubleAll [1,2,3] -- [2,4,6]

def countEven (xs : List Nat) : Nat :=
  match xs with
    | [] => 0
    | x :: rest => (x%2==0).toNat + countEven rest

#eval countEven [1,2,3,4,5,6] -- 3
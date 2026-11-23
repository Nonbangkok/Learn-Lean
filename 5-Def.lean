def age : Nat := 20
def name : String := "Somchai"
-- def wrong : Nat := "hello"

#eval age
#eval age + 1
#eval s!"{name} age {age} years old"
#check age

def double (n : Nat) : Nat := n * 2

#eval double 5 -- 10
#eval double 21 -- 42
#check double -- double (n : Nat) : Nat

def greet (name : String) : String := s!"Hello {name}!"

#eval greet "Lean" -- "Hello Lean!"
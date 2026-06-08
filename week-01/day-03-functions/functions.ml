(* Day 3: Functions and Pattern Matching *)

(* FUNCTIONS - every function takes exactly one argument *)
let double x = x * 2
let add x y = x + y        (* this is actually add x, which returns a function *)
let square x = x * x

(* IF EXPRESSIONS - not statements like Python, they return values *)
let abs_val x =
  if x >= 0 then x
  else -x

let max_of a b =
  if a > b then a
  else b

(* PATTERN MATCHING - like switch but much more powerful *)
let describe_number n =
  match n with
  | 0 -> "zero"
  | 1 -> "one"
  | 2 -> "two"
  | _ -> "something else"   (* _ means "anything else" *)

(* Pattern matching on booleans *)
let to_string b =
  match b with
  | true -> "yes"
  | false -> "no"

(* Pattern matching with conditions (guards) *)
let classify_number n =
  match n with
  | 0 -> "zero"
  | n when n > 0 -> "positive"
  | _ -> "negative"

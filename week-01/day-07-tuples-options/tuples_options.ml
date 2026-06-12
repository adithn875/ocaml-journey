(* Day 7: Tuples and Option Types *)

(* TUPLES - group values of different types together *)
let point = (3, 4)
let person = ("Adith", 21)
let mixed = (1, "hello", true)

(* Extract values using pattern matching *)
let (x, y) = point
let (name, age) = person

(* Functions that return tuples *)
let min_max a b =
  if a < b then (a, b)
  else (b, a)

(* OPTION TYPE - represents a value that may or may not exist *)
(* Like Python's None but type-safe *)

(* Some x = value exists *)
(* None   = value doesn't exist *)

let find_first lst =
  match lst with
  | [] -> None
  | head :: _ -> Some head

let safe_divide a b =
  if b = 0 then None
  else Some (a / b)

(* To use an option value you must pattern match *)
let describe_option opt =
  match opt with
  | None -> "nothing here"
  | Some x -> "got value: " ^ string_of_int x

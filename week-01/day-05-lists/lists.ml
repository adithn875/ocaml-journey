(* Day 5: Lists *)

(* A list in OCaml - all elements must be the same type *)
let numbers = [1; 2; 3; 4; 5]
let names = ["Adith"; "Jane"; "Street"]
let empty = []

(* :: is called "cons" - adds one element to the front *)
let added = 0 :: numbers       (* [0; 1; 2; 3; 4; 5] *)
let more = 10 :: 20 :: [30]    (* [10; 20; 30] *)

(* @ joins two lists together *)
let joined = [1; 2; 3] @ [4; 5; 6]

(* Pattern matching on lists - this is where it gets powerful *)
let describe_list lst =
  match lst with
  | [] -> "empty list"
  | [x] -> "one element"
  | [x; y] -> "two elements"
  | _ -> "more than two elements"

(* head = first element, tail = everything else *)
let first_element lst =
  match lst with
  | [] -> -1        (* empty list has no first element *)
  | head :: _ -> head  (* head is first, _ ignores the rest *)

(* Sum all elements in a list recursively *)
let rec sum_list lst =
  match lst with
  | [] -> 0
  | head :: tail -> head + sum_list tail

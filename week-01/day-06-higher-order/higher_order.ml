(* Day 6: Higher Order Functions *)

(* A higher order function takes a function as an argument *)

(* List.map - apply a function to every element *)
let doubled = List.map (fun x -> x * 2) [1; 2; 3; 4; 5]
(* = [2; 4; 6; 8; 10] *)

let squared = List.map (fun x -> x * x) [1; 2; 3; 4; 5]
(* = [1; 4; 9; 16; 25] *)

(* List.filter - keep only elements that pass a test *)
let evens = List.filter (fun x -> x mod 2 = 0) [1; 2; 3; 4; 5; 6]
(* = [2; 4; 6] *)

let positives = List.filter (fun x -> x > 0) [-3; -1; 0; 2; 5]
(* = [2; 5] *)

(* List.fold_left - reduce a list to a single value *)
let total = List.fold_left (fun acc x -> acc + x) 0 [1; 2; 3; 4; 5]
(* = 15 *)

let product = List.fold_left (fun acc x -> acc * x) 1 [1; 2; 3; 4; 5]
(* = 120 *)

(* fun x -> is an anonymous function, like Python's lambda *)
(* Python: lambda x: x * 2 *)
(* OCaml:  fun x -> x * 2 *)

(* You can also pass named functions *)
let double x = x * 2
let doubled2 = List.map double [1; 2; 3; 4; 5]

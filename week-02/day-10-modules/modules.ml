(* Day 10: Modules *)

(* A module is a named collection of types, values, and functions *)
(* Like a Python class but for organizing code, not objects *)

(* Define a module *)
module Greet = struct
  let hello name = "Hello " ^ name ^ "!"
  let bye name = "Goodbye " ^ name ^ "!"
end

(* Use a module with dot notation *)
let msg1 = Greet.hello "Adith"
let msg2 = Greet.bye "Adith"

(* A more useful module — Math operations *)
module MathOps = struct
  let square x = x * x
  let cube x = x * x * x
  let is_even x = x mod 2 = 0
  let is_odd x = not (is_even x)
  let factorial n =
    let rec aux n acc =
      if n = 0 then acc
      else aux (n - 1) (n * acc)
    in
    aux n 1
end

(* A module with a type inside *)
module Point = struct
  type t = {
    x : float;
    y : float;
  }

  let make x y = { x; y }

  let distance p1 p2 =
    let dx = p1.x -. p2.x in
    let dy = p1.y -. p2.y in
    sqrt (dx *. dx +. dy *. dy)

  let to_string p =
    "(" ^ string_of_float p.x ^ ", " ^ string_of_float p.y ^ ")"
end

(* open a module to use it without prefix *)
let () =
  let open MathOps in
  Printf.printf "square 5 = %d\n" (square 5);
  Printf.printf "cube 3 = %d\n" (cube 3);
  Printf.printf "factorial 5 = %d\n" (factorial 5)

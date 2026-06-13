(* Day 8: Variants - Custom Types *)

(* A variant is a type that can be ONE of several things *)
type day =
  | Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday

(* Pattern match on your custom type *)
let is_weekend day =
  match day with
  | Saturday | Sunday -> true
  | _ -> false

let describe_day day =
  match day with
  | Monday -> "Start of the week"
  | Friday -> "Almost weekend!"
  | Saturday | Sunday -> "Weekend!"
  | _ -> "Middle of the week"

(* Variants can CARRY DATA - this is the powerful part *)
type shape =
  | Circle of float
  | Rectangle of float * float
  | Triangle of float * float * float

(* Calculate area *)
let area shape =
  match shape with
  | Circle r -> 3.14159 *. r *. r
  | Rectangle (w, h) -> w *. h
  | Triangle (a, b, c) ->
    let s = (a +. b +. c) /. 2.0 in
    sqrt (s *. (s -. a) *. (s -. b) *. (s -. c))

(* Describe any shape *)
let describe_shape shape =
  match shape with
  | Circle r -> "Circle with radius " ^ string_of_float r
  | Rectangle (w, h) -> "Rectangle " ^ string_of_float w ^ "x" ^ string_of_float h
  | Triangle _ -> "A triangle"

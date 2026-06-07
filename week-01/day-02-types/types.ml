(* Day 2: Types and Type Inference *)

(* THE BASIC TYPES IN OCAML *)

let my_int = 42          (* int *)
let my_float = 3.14      (* float *)
let my_string = "Adith"  (* string *)
let my_bool = true       (* bool *)
let my_char = 'A'        (* char - single quotes only *)

(* IMPORTANT: int and float are completely separate in OCaml *)
(* You cannot mix them like Python *)

let int_add = 5 + 3        (* int addition uses + *)
let float_add = 5.0 +. 3.0 (* float addition uses +. *)

(* To convert between them you must be explicit *)
let x = 5
let y = float_of_int x     (* converts int -> float *)
let z = int_of_float 3.99  (* converts float -> int, truncates *)

(* STRING OPERATIONS *)
let first = "Jane "
let last = "Street"
let full = first ^ last       (* ^ concatenates strings *)
let len = String.length full  (* get string length *)

(* BOOLEANS *)
let a = true
let b = false
let both = a && b   (* AND *)
let either = a || b (* OR *)
let flipped = not a (* NOT *)

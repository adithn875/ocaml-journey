(* Day 1: Values, Types, and Let Bindings *)

(* In OCaml, you bind values with 'let' — not variables, VALUES.
   Once bound, they never change. This is different from Python. *)

let name = "Adith"
let age = 21
let is_learning = true
let pi = 3.14159

(* OCaml infers types automatically — you don't need to declare them *)

(* Functions are also just values bound with let *)
let greet person =
  "Hello, " ^ person ^ "!"

(* ^ is string concatenation in OCaml, not + like Python *)

let square x = x * x

let add x y = x + y

(* Let's use them *)
let message = greet name
let result = square 5
let sum = add 3 7

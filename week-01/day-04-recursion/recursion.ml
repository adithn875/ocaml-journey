(* Day 4: Recursion *)

(* In OCaml, recursive functions need the 'rec' keyword *)
(* Without 'rec', OCaml won't allow the function to call itself *)

(* Factorial: 5! = 5 * 4 * 3 * 2 * 1 = 120 *)
let rec factorial n =
  if n = 0 then 1
  else n * factorial (n - 1)

(* Sum of 1 to n *)
let rec sum n =
  if n = 0 then 0
  else n + sum (n - 1)

(* Count down from n to 0 *)
let rec countdown n =
  if n = 0 then "done!"
  else countdown (n - 1)

(* Power: base^exp *)
let rec power base exp =
  if exp = 0 then 1
  else base * power base (exp - 1)

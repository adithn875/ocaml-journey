(* Day 11: Error Handling with Result *)

(* Result type has two cases - like Option but carries error info *)
(* Ok x    = success, x is the value *)
(* Error e = failure, e is the error message *)

(* Safe division - returns Result instead of crashing *)
let safe_divide a b =
  if b = 0 then Error "Division by zero"
  else Ok (a / b)

(* Safe head - get first element safely *)
let safe_head lst =
  match lst with
  | [] -> Error "Empty list"
  | head :: _ -> Ok head

(* Parse a positive number *)
let parse_positive n =
  if n < 0 then Error "Number must be positive"
  else if n = 0 then Error "Number must not be zero"
  else Ok n

(* Chain results together *)
let process_number n =
  match parse_positive n with
  | Error e -> Error e
  | Ok x ->
    match safe_divide 100 x with
    | Error e -> Error e
    | Ok result -> Ok result

(* Handle a result and print *)
let print_result r =
  match r with
  | Ok x -> Printf.printf "Success: %d\n" x
  | Error e -> Printf.printf "Error: %s\n" e

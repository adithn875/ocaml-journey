(* DSA Day 1: Find Max in a List *)
(* Returns None for empty list instead of crashing *)

let rec find_max lst =
  match lst with
  | [] -> None
  | [x] -> Some x
  | head :: tail ->
    match find_max tail with
    | None -> Some head
    | Some rest_max ->
      if head > rest_max then Some head
      else Some rest_max

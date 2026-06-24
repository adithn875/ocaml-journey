let rec last lst =
  match lst with
  | [] -> None
  | [x] -> Some x
  | head :: tail -> last tail

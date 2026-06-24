let rec length lst =
  match lst with
  | [] -> 0
  | head :: tail -> 1 + length tail

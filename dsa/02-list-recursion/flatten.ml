let rec flatten lst =
  match lst with
  | [] -> []
  | head :: tail -> head @ flatten tail

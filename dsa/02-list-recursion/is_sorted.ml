let rec is_sorted lst =
  match lst with
  | [] -> true
  | [x] -> true
  | first :: second :: rest ->
    first <= second && is_sorted (second :: rest)

let rec nth lst n =
  match lst with
  | [] -> None
  | head :: tail ->
    if n = 0 then Some head
    else nth tail (n - 1)

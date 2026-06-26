let rec take n lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if n = 0 then []
    else head :: take (n - 1) tail

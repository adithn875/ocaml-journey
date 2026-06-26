let rec drop n lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if n = 0 then lst
    else drop (n - 1) tail

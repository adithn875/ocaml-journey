let rec take n lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if n = 0 then []
    else head :: take (n - 1) tail

let rec drop n lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if n = 0 then lst
    else drop (n - 1) tail

let rotate n lst =
  drop n lst @ take n lst

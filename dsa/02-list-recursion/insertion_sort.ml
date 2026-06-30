let rec insert_sorted x lst =
  match lst with
  | [] -> [x]
  | head :: tail ->
    if x <= head then x :: head :: tail
    else head :: insert_sorted x tail

let rec insertion_sort lst =
  match lst with
  | [] -> []
  | head :: tail -> insert_sorted head (insertion_sort tail)

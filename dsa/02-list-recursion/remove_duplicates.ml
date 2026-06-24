let rec count_occurrences lst target =
  match lst with
  | [] -> 0
  | head :: tail ->
    if head = target then 1 + count_occurrences tail target
    else count_occurrences tail target

let fast_reverse lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | head :: tail -> aux tail (head :: acc)
  in
  aux lst []

let remove_duplicates lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | head :: tail ->
      if count_occurrences acc head > 0 then aux tail acc
      else aux tail (head :: acc)
  in
  fast_reverse (aux lst [])

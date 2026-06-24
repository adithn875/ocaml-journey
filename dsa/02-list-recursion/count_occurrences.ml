let rec count_occurrences lst target =
  match lst with
  | [] -> 0
  | head :: tail ->
    if head = target then 1 + count_occurrences tail target
    else count_occurrences tail target

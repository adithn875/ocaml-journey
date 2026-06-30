let rec merge lst1 lst2 =
  match lst1, lst2 with
  | [], _ -> lst2
  | _, [] -> lst1
  | h1 :: t1, h2 :: t2 ->
    if h1 <= h2 then h1 :: merge t1 lst2
    else h2 :: merge lst1 t2

let rec split lst =
  match lst with
  | [] -> ([], [])
  | head :: tail ->
    let (b, a) = split tail in
    (head :: a, b)

let rec merge_sort lst =
  match lst with
  | [] -> []
  | [x] -> [x]
  | _ ->
    let (a, b) = split lst in
    merge (merge_sort a) (merge_sort b)

let rec count_occurrences lst target =
  match lst with
  | [] -> 0
  | head :: tail ->
    if head = target then 1 + count_occurrences tail target
    else count_occurrences tail target

let rec remove_all x lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if head = x then remove_all x tail
    else head :: remove_all x tail

let rec take n lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if n = 0 then []
    else head :: take (n-1) tail

let rec drop n lst =
  match lst with
  | [] -> []
  | _ ->
    if n = 0 then lst
    else drop (n-1) lst

let rec chunk n lst =
  match lst with
  | [] -> []
  | _ -> (take n lst) :: chunk n (drop n lst)

let rec run_length_encode lst =
  match lst with
  | [] -> []
  | head :: tail ->
    (count_occurrences lst head, head) :: run_length_encode (remove_all head tail)

let rec interleave lst1 lst2 =
  match lst1, lst2 with
  | [], _ -> lst2
  | _, [] -> lst1
  | h1 :: t1, h2 :: t2 -> h1 :: h2 :: interleave t1 t2

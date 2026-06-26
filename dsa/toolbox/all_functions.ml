(* ===================================== *)
(* DSA Toolbox - All functions so far    *)
(* Load this with #use at the start of   *)
(* every utop session                    *)
(* ===================================== *)

let rec find_max lst =
  match lst with
  | [] -> None
  | [x] -> Some x
  | head :: tail ->
    match find_max tail with
    | None -> Some head
    | Some rest_max ->
      if head > rest_max then Some head
      else Some rest_max

let rec sum_list lst =
  match lst with
  | [] -> 0
  | head :: tail -> head + sum_list tail

let fast_reverse lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | head :: tail -> aux tail (head :: acc)
  in
  aux lst []

let is_palindrome lst =
  lst = fast_reverse lst

let rec count_occurrences lst target =
  match lst with
  | [] -> 0
  | head :: tail ->
    if head = target then 1 + count_occurrences tail target
    else count_occurrences tail target

let rec length lst =
  match lst with
  | [] -> 0
  | head :: tail -> 1 + length tail

let rec nth lst n =
  match lst with
  | [] -> None
  | head :: tail ->
    if n = 0 then Some head
    else nth tail (n - 1)

let rec last lst =
  match lst with
  | [] -> None
  | [x] -> Some x
  | head :: tail -> last tail

let remove_duplicates lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | head :: tail ->
      if count_occurrences acc head > 0 then aux tail acc
      else aux tail (head :: acc)
  in
  fast_reverse (aux lst [])

let rec flatten lst =
  match lst with
  | [] -> []
  | head :: tail -> head @ flatten tail

let rec zip lst1 lst2 =
  match lst1, lst2 with
  | [], _ -> []
  | _, [] -> []
  | head1 :: tail1, head2 :: tail2 ->
    (head1, head2) :: zip tail1 tail2

let rec take n lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if n = 0 then []
    else head :: take (n - 1) tail

let last_n n lst =
  fast_reverse (take n (fast_reverse lst))

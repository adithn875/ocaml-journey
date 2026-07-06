(* Higher Order Functions — map, filter, fold_left *)

let rec map f lst =
  match lst with
  | [] -> []
  | head :: tail -> f head :: map f tail

let rec filter f lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if f head then head :: filter f tail
    else filter f tail

let rec fold_left f acc lst =
  match lst with
  | [] -> acc
  | head :: tail -> fold_left f (f acc head) tail

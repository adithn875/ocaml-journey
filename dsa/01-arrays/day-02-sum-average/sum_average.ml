(* DSA Day 2: Sum and Average of a List *)

let rec sum_list lst =
  match lst with
  | [] -> 0
  | head :: tail -> head + sum_list tail
let rec length lst =
  match lst with
  | [] -> 0
  | _ :: tail -> 1 + length tail

let average lst =
  let total = sum_list lst in
  let count = length lst in
  float_of_int total /. float_of_int count

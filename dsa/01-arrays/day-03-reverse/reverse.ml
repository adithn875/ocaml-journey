(* DSA Day 3: Fast Reverse using Accumulator Pattern *)

let fast_reverse lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | head :: tail -> aux tail (head :: acc)
  in
  aux lst []

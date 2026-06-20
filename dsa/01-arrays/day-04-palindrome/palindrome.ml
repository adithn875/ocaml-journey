(* DSA Day 4: Palindrome Check *)

let fast_reverse lst =
  let rec aux lst acc =
    match lst with
    | [] -> acc
    | head :: tail -> aux tail (head :: acc)
  in
  aux lst []

let is_palindrome lst =
  lst = fast_reverse lst

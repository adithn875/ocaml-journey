(* Stack — LIFO *)
let push x stack = x :: stack

let pop stack =
  match stack with
  | [] -> None
  | head :: tail -> Some (head, tail)

let peek stack =
  match stack with
  | [] -> None
  | head :: _ -> Some head

(* Queue — FIFO *)
let enqueue x queue = queue @ [x]

let dequeue queue =
  match queue with
  | [] -> None
  | head :: tail -> Some (head, tail)

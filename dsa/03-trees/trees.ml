type 'a tree =
  | Leaf
  | Node of 'a tree * 'a * 'a tree

let rec size tree =
  match tree with
  | Leaf -> 0
  | Node (left, value, right) -> 1 + size left + size right

let rec height tree =
  match tree with
  | Leaf -> 0
  | Node (left, value, right) -> 1 + max (height left) (height right)

let rec member x tree =
  match tree with
  | Leaf -> false
  | Node (left, value, right) ->
    if x = value then true
    else member x left || member x right

let rec inorder tree =
  match tree with
  | Leaf -> []
  | Node (left, value, right) -> inorder left @ [value] @ inorder right

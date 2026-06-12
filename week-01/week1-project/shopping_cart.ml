(* Week 1 Project: Simple Shopping Cart *)
(* Uses everything learned in Week 1 *)

(* DAY 2: Types - a product is a tuple of (name, price, quantity) *)
let make_item name price qty = (name, price, qty)

(* DAY 1: Let bindings - our shop inventory *)
let cart = [
  make_item "Apple"  0.99  3;
  make_item "Bread"  2.49  1;
  make_item "Milk"   1.79  2;
  make_item "Cheese" 3.99  1;
  make_item "Eggs"   4.49  1;
]

(* DAY 3: Pattern matching - extract item details *)
let get_name (name, _, _) = name
let get_price (_, price, _) = price
let get_qty (_, _, qty) = qty

(* DAY 3: Functions - calculate cost of one item *)
let item_total (_, price, qty) = price *. float_of_int qty

(* DAY 6: Higher order - calculate total cart value *)
let cart_total items =
  List.fold_left (fun acc item -> acc +. item_total item) 0.0 items

(* DAY 6: Higher order - get all item names *)
let item_names items =
  List.map get_name items

(* DAY 4: Recursion - count total items in cart *)
let rec count_items items =
  match items with
  | [] -> 0
  | (_, _, qty) :: tail -> qty + count_items tail

(* DAY 7: Option - find item by name *)
let rec find_item name items =
  match items with
  | [] -> None
  | (n, p, q) :: tail ->
    if n = name then Some (n, p, q)
    else find_item name tail

(* DAY 3: Pattern matching on option *)
let describe_item name items =
  match find_item name items with
  | None -> "Item not found: " ^ name
  | Some (n, p, q) ->
    n ^ " costs $" ^ string_of_float p ^
    " x " ^ string_of_int q ^ " units"

(* DAY 6: Filter - items above a price *)
let expensive_items min_price items =
  List.filter (fun item -> get_price item > min_price) items

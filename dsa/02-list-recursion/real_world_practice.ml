(* Real World Practice — Fintech Transaction Simulator *)

type transaction = {
  id: int;
  amount: float;
  status: string;
}

let transactions = [
  { id = 1; amount = 250.0; status = "completed" };
  { id = 2; amount = 99.5; status = "pending" };
  { id = 5; amount = 430.0; status = "failed" };
  { id = 8; amount = 120.0; status = "completed" };
]

(* Task 1: Find a transaction by ID — returns Some or None *)
let rec find_transaction lst id =
  match lst with
  | [] -> None
  | head :: tail ->
    if head.id = id then Some head
    else find_transaction tail id

(* Task 2: Sum of all completed transaction amounts *)
let rec total_completed lst =
  match lst with
  | [] -> 0.0
  | head :: tail ->
    if head.status = "completed" then head.amount +. total_completed tail
    else total_completed tail

(* Task 3: List of IDs of all failed transactions *)
let rec failed_ids lst =
  match lst with
  | [] -> []
  | head :: tail ->
    if head.status = "failed" then head.id :: failed_ids tail
    else failed_ids tail

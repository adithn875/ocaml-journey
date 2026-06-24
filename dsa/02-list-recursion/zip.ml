let rec zip lst1 lst2 =
  match lst1, lst2 with
  | [], _ -> []
  | _, [] -> []
  | head1 :: tail1, head2 :: tail2 ->
    (head1, head2) :: zip tail1 tail2

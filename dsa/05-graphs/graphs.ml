(* Graph represented as adjacency list *)
let graph = [
  (1, [2; 3]);
  (2, [1; 4]);
  (3, [1; 4; 5]);
  (4, [2; 3]);
  (5, [3]);
]

(* Get neighbours of a node *)
let rec get_neighbours node graph =
  match graph with
  | [] -> []
  | (n, neighbours) :: tail ->
    if n = node then neighbours
    else get_neighbours node tail

(* DFS — depth first, neighbours go to front *)
let rec dfs graph visited = function
  | [] -> visited
  | head :: tail ->
    if List.mem head visited then dfs graph visited tail
    else dfs graph (visited @ [head]) (get_neighbours head graph @ tail)

(* BFS — breadth first, neighbours go to back *)
let rec bfs graph visited = function
  | [] -> visited
  | head :: tail ->
    if List.mem head visited then bfs graph visited tail
    else bfs graph (visited @ [head]) (tail @ get_neighbours head graph)

(* Day 9: Records *)

(* A record groups named fields together *)
(* Like a Python dictionary but type safe *)

type person = {
  name : string;
  age  : int;
  city : string;
}

type student = {
  person : person;
  grade  : float;
  passed : bool;
}

(* Create records *)
let adith = {
  name = "Adith";
  age  = 21;
  city = "Bengaluru";
}

(* Access fields with dot notation *)
let greet p =
  "Hello " ^ p.name ^ " from " ^ p.city ^ "!"

(* Update a record - creates a NEW record, original unchanged *)
let birthday p =
  { p with age = p.age + 1 }

(* Pattern match on records *)
let describe p =
  match p with
  | { name; age; _ } ->
    name ^ " is " ^ string_of_int age ^ " years old"

(* Records with variants together *)
type shape =
  | Circle of float
  | Rectangle of float * float

type colored_shape = {
  shape : shape;
  color : string;
}

let describe_colored cs =
  match cs.shape with
  | Circle r ->
    cs.color ^ " circle with radius " ^ string_of_float r
  | Rectangle (w, h) ->
    cs.color ^ " rectangle " ^ string_of_float w ^ "x" ^ string_of_float h

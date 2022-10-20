type t = {
  name : string;
  value : int;
  loc : int * int;
  captured : bool;
  moves : (int * int) list;
  color : string;
  moved : bool;
}

let init_val name =
  match name with
  | "pawn" -> 1
  | "knight" -> 3
  | "bishop" -> 3
  | "rook" -> 5
  | "queen" -> 9
  | "king" -> 99
  | _ -> int_of_float infinity

let init name color loc : t =
  {
    name;
    value = name |> init_val;
    loc;
    captured = false;
    color;
    moves = [];
    moved = false;
  }

let update_location (t : t) (new_loc : int * int) =
  { t with loc = new_loc; moved = true }

let location t = t.loc
let name t = t.name
let moved t = t.moved
let color t = t.color
let value t = t.value
let captured t = t.captured
let moves t = t.moves

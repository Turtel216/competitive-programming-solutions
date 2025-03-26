(* Problem Statement from csacademy 

   You can read the full problem state here: https://csacademy.com/contest/interview-archive/task/banknotes/

   Score 88.89. Time limit exceeded on some tests
*)

let calc_notes (a : int) (b : int) (s : int) (n : int) : int =
  if a = b then -1
  else
    let rec solve x =
      if x > n then -1
      else
        let b_count = n - x in
        if (x * a) + (b_count * b) = s then x else solve (x + 1)
    in
    solve 0

let () = Printf.printf "%i\n" (Scanf.scanf "%i %i %i %i" calc_notes)

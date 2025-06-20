fun digits n =
    let
        fun helper 0 acc = acc
          | helper x acc = helper (x div 10) ((x mod 10) :: acc)
    in
        helper n []
    end;

fun digitalRoot n =
    let
        fun root x =
            if x < 10 then x
            else root (List.foldl (op +) 0 (digits x))
    in
        root n
    end;

fun additivePersistence n =
    let
        fun persistence x count =
            if x < 10 then count
            else persistence (List.foldl (op +) 0 (digits x)) (count + 1)
    in
        persistence n 0
    end;

val persistence1 = additivePersistence(9876);
val root1 = digitalRoot(9876);

val persistence2 = additivePersistence(12349);
val root2 = digitalRoot(12349);

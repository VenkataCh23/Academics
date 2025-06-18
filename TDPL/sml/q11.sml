fun pi (a, b, f) =
    let
        fun product (x, acc) =
            if x > b then acc
            else product (x + 1, acc * f x)
    in
        product (a, 1)
    end;

val result1 = pi (1, 4, fn x => x * x);
val result2 = pi (3, 5, fn x => x + 1);
val result3 = pi (0, 3, fn x => 2);

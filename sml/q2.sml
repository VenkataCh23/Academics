fun is_factor(n: int, d: int): bool =
    n mod d = 0;

fun prime(x: int): bool =
    if x < 2 then
        false
    else
        let
            fun check_factors(d: int): bool =
                if d * d > x then
                    true
                else if is_factor(x, d) then
                    false
                else
                    check_factors(d + 1)
        in
            check_factors(2)
        end;

val test1 = prime(5);
val test2 = prime(10);
val test3 = prime(1);
val test4 = prime(13);
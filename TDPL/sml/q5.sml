fun sum_of_proper_divisors(n: int): int =
    let
        fun is_divisor(d: int): bool =
            d > 0 andalso n mod d = 0

        fun sum_divisors(current: int, accumulator: int): int =
            if current >= n then
                accumulator
            else if is_divisor(current) then
                sum_divisors(current + 1, accumulator + current)
            else
                sum_divisors(current + 1, accumulator)
    in
        sum_divisors(1, 0)
    end;

fun amicable(x: int, y: int): bool =
    if x <= 0 orelse y <= 0 then
        false
    else
        let
            val sumX = sum_of_proper_divisors(x)
            val sumY = sum_of_proper_divisors(y)
        in
            (sumX = y) andalso (sumY = x)
        end;

val test1 = amicable(220, 284);
val test2 = amicable(1184, 1210);
val test3 = amicable(12, 28);
val test4 = amicable(6, 28);
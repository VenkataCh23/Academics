fun digits n =
    let
        fun helper 0 acc = acc
          | helper x acc = helper (x div 10) ((x mod 10) :: acc)
    in
        helper n []
    end;

val result1 = digits(253);
val result2 = digits(12345);
val result3 = digits(0);

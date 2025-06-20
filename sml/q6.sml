fun occr(nums: int list, x: int): int =
    case nums of
        [] => 0
      | h :: t => if h = x then 1 + occr(t, x)
                  else occr(t, x);

val test1 = occr([1, 2, 3, 2, 4, 2], 2);
val test2 = occr([1, 1, 1, 1, 1], 1);
val test3 = occr([1, 2, 3, 4], 5);
val test4 = occr([], 1);

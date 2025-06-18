fun merge ([], ys) = ys
  | merge (xs, []) = xs
  | merge (x::xs, y::ys) =
      if x < y then
          x :: merge(xs, y::ys)
      else
          y :: merge(x::xs, ys);

val merged1 = merge([1, 4, 5], [2, 6, 7]);
val merged2 = merge([1, 3, 5], [2, 4, 6]);
val merged3 = merge([10, 20, 30], [5, 15, 25]);

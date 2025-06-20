fun reverse [] = []
  | reverse (x::xs) = reverse xs @ [x];

val reversed1 = reverse([1, 5, 4]);
val reversed2 = reverse([10, 20, 30]);
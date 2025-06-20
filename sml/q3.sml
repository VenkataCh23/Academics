fun gcd(x: int, y: int): int =
    if y = 0 then
        abs(x)
    else
        gcd(y, x mod y);

val result1 = gcd(48, 18); 
val result2 = gcd(101, 10); 
val result3 = gcd(56, 0);

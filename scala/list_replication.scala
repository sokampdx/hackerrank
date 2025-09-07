def f(n:Int, arr:List[Int]):List[Int] = arr.flatMap(v => (0 until n).map( _ => v))

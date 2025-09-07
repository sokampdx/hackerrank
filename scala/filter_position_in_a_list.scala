def f(arr:List[Int]):List[Int] = arr.zipWithIndex.filter(pair => pair._2 % 2 == 1).map(pair => pair._1)

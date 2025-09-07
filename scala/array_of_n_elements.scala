object Solution extends App {

    def readInt() : Int = scala.io.StdIn.readInt()
   
    def f(num:Int) : List[Int] = (0 until num).toList

    println(f(readInt))
}

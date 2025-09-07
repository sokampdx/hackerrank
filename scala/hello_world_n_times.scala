object Solution extends App {
  def f(n: Int) = (1 to n).foreach(x => println("Hello World"))

  var n = scala.io.StdIn.readInt
  f(n)
}

package bazeltest

import org.joda.time.DateTime
import othermodule.Worker

object Main extends App {
  println("IN MAIN now: "+DateTime.now.plusYears(11))
  val worker = new Worker
  worker.doSomething


  def status = "OKi"
}
class Main
{

}

package app

import org.joda.time.DateTime
import module.Worker

object Main extends App {
  println("IN MAIN now: "+DateTime.now.plusYears(11))
  val worker = new Worker
  worker.doSomething


  def status = "OKi"
}
class Main
{

}

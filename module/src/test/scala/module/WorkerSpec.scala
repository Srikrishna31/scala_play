package module

import org.scalatest._

class WorkerSpec  extends FlatSpec with Matchers {
  val worker = new Worker()

  "do something" should "return 12345" in {
    worker.doSomething shouldBe 12345
  }

  "pureFunc" should "return ABC" in {
    worker.pureFunc shouldBe "ABC"
  }
}

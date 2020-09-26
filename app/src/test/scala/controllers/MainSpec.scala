package controllers

import org.scalatest._

class MainSpec extends FlatSpec with Matchers{
  "status" should "return OK" in {
    Main.status shouldBe "OKi"
  }
}

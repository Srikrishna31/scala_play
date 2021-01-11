package controllers

import org.scalatestplus.play.{PlaySpec}
import play.api.mvc.{Results, Result}
import play.api.test.FakeRequest
//import play.api.test.Helpers.{stubControllerComponents, contentAsString}
import play.api.test.Helpers._
import scala.concurrent.Future

class HomeControllerSpec extends PlaySpec with Results {
  "Example Page#index" should {
    "return OK" in {
      val controller = new HomeController(stubControllerComponents())
      val result : Future[Result] = controller.index().apply(FakeRequest())
      val bodyText : String = contentAsString(result)

      bodyText mustBe "Welcome to Play!"
    }
  }
}

package app

import java.io.File

import org.joda.time.DateTime
import module.Worker
import javax.inject.Inject
import play.api.{Configuration, Environment, Mode}

import scala.concurrent.Future
import scala.concurrent.duration._
import play.api.mvc._
import play.api.http.HttpEntity
import play.api.libs.ws.ahc.{AhcWSClientConfigFactory, StandaloneAhcWSClient}
import play.api.libs.ws.WSClient
import akka.actor.{ActorSystem, ActorSystemImpl}
import akka.stream.Materializer

import scala.concurrent.ExecutionContext
import play.shaded.ahc.org.asynchttpclient.DefaultAsyncHttpClient

class Main @Inject() (ws: WSClient, val controllerComponents: ControllerComponents) extends BaseController {


}

object Main {
  implicit val ec: scala.concurrent.ExecutionContext = scala.concurrent.ExecutionContext.global

  def main(args: Array[String]): Unit = {
//    val configuration = Configuration("ws.followRedirects" -> true).withFallback(Configuration.reference)
//
//    // If running in Play, environment should be injected
//    val environment        = Environment(new File("."), this.getClass.getClassLoader, Mode.Prod)
//    val wsConfig           = AhcWSClientConfigFactory.forConfig(configuration.underlying, environment.classLoader)
    val mat                = Materializer(ActorSystem("test"))
    val ws = new StandaloneAhcWSClient(new DefaultAsyncHttpClient())(mat)
    val request = ws.url(" https://api.github.com/zen")

    val resp = request.get()

    resp.foreach(println)

    //ws.close()
  }

}
package app

import java.io.File

import org.joda.time.DateTime
import module.Worker
import javax.inject.Inject
import play.api.{Configuration, Environment, Mode}

import scala.concurrent.{Await, ExecutionContext}
import scala.concurrent.duration.Duration
import play.api.mvc._
import play.api.libs.ws.ahc.{AhcWSClientConfigFactory, StandaloneAhcWSClient}
import play.api.libs.ws.WSClient
import akka.actor.ActorSystem
import akka.stream.Materializer
import play.shaded.ahc.org.asynchttpclient.DefaultAsyncHttpClient

class Main @Inject() (ws: WSClient, val controllerComponents: ControllerComponents) extends BaseController {
  implicit val ec: ExecutionContext = ExecutionContext.global

  def getResponse(url: String) : String = {
    val configuration = Configuration("ws.followRedirects" -> true).withFallback(Configuration.reference)

    // If running in Play, environment should be injected
    val environment        = Environment(new File("."), this.getClass.getClassLoader, Mode.Prod)
    val wsConfig           = AhcWSClientConfigFactory.forConfig(configuration.underlying, environment.classLoader)
    val actorSystem        = ActorSystem("test")
    val mat                = Materializer(actorSystem)
    val ws = new StandaloneAhcWSClient(new DefaultAsyncHttpClient())(mat)
    val request = ws.url(url)

    val resp = request.get().map(_.body)
    var res = ""

    resp.onComplete (r => {
      res = r.get
    })

    Await.ready(resp, Duration.Inf)
    ws.close()
    actorSystem.terminate()

    res
  }
}

object Main {
  def main(args: Array[String]): Unit = {
    val m = new Main(null, null)
    println(m.getResponse(" https://api.github.com/zen"))
  }
}

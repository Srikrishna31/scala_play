package controllers

import java.io.File

import org.joda.time.DateTime
import module.Worker
import javax.inject.Inject
import play.api.{Configuration, Environment, Mode}

import scala.concurrent.{Await, ExecutionContext}
import scala.concurrent.duration.Duration
import play.api.mvc._
import play.api.libs.streams._
import play.api.libs.ws.ahc.{AhcWSClientConfigFactory, StandaloneAhcWSClient}
import play.api.libs.ws.WSClient
import akka.actor.ActorSystem
import akka.stream.Materializer
import play.shaded.ahc.org.asynchttpclient.DefaultAsyncHttpClient
import views.html._

class HomeController @Inject() (val controllerComponents: ControllerComponents) extends BaseController {

  def index(): Result = Ok(views.html.index.render());
}


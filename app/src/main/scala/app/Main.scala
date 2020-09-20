package app

import org.joda.time.DateTime
import module.Worker
import javax.inject.Inject

import scala.concurrent.Future
import scala.concurrent.duration._
import play.api.mvc._
import play.api.http.HttpEntity
//import play.api.libs.ws._
import play.api.libs.ws.WSClient
import scala.concurrent.ExecutionContext

class Application @Inject() (ws: WSClient, val controllerComponents: ControllerComponents) extends BaseController {}
package vertx;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.MultiMap;
import io.vertx.core.http.HttpMethod;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import petPal.vetInfo;

public class VertxRouteHandler extends AbstractVerticle {


    private int port = 8081;

    @Override
    public void start() {

        Router router = Router.router(vertx);

        router.route().handler(io.vertx.ext.web.handler.CorsHandler.create("*")
                .allowedMethod(io.vertx.core.http.HttpMethod.GET)
                .allowCredentials(true)
                .allowedHeader("Access-Control-Allow-Method")
                .allowedHeader("Access-Control-Allow-Origin")
                .allowedHeader("Access-Control-Allow-Credentials")
                .allowedHeader("Content-Type"));

        router.route(HttpMethod.GET, "/").handler(ctx -> ctx.response().end(
                "Service has started"));
        router.route(HttpMethod.GET, "/petpal").handler(this::getPetPal);

        vertx.createHttpServer()
                .requestHandler(router)
                .listen(config().getInteger("http.port", port));
    }

    private void getPetPal(final RoutingContext routingContext) {
        try {
            MultiMap queryParams = routingContext.queryParams();
            String city = queryParams.get("city");
            vetInfo vet = new vetInfo();
            String sb = vet.getListofVets(city);
            routingContext.response().setStatusCode(200).end(sb);
        } catch (Exception e) {
            e.printStackTrace();
            routingContext.response()
                    .setStatusCode(500).end();
        }
    }
}

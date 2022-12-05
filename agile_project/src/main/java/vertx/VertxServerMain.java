package vertx;

import io.vertx.core.Vertx;
import io.vertx.core.VertxOptions;


public class VertxServerMain {

    /**
     * Number of threads to run in the Event Loop
     */
    public static final int EVENT_LOOP_POOL_SIZE =
            2 * Runtime.getRuntime().availableProcessors();

    public static int MAX_WORKER_POOL_SIZE = 20;
    public static int WORKER_EXECUTE_TIME = 100;
    public static int BLOCKED_THREAD_CHECK = 5000;

    public static void main(String[] args) {

        VertxOptions vertxOp = new VertxOptions();
        vertxOp.setEventLoopPoolSize(EVENT_LOOP_POOL_SIZE);
        vertxOp.setWorkerPoolSize(MAX_WORKER_POOL_SIZE);
        vertxOp.setMaxWorkerExecuteTime(WORKER_EXECUTE_TIME);
        vertxOp.setBlockedThreadCheckInterval(BLOCKED_THREAD_CHECK);
        System.out.println("Starting Application");
        Vertx vertx = Vertx.vertx(vertxOp);
        vertx.deployVerticle(VertxRouteHandler.class.getName());
    }
}

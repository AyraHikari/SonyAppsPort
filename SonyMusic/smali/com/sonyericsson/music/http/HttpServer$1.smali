.class Lcom/sonyericsson/music/http/HttpServer$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/http/HttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/http/HttpServer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/http/HttpServer;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 7

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/music/http/HttpServer$1;->this$0:Lcom/sonyericsson/music/http/HttpServer;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 80
    new-instance p1, Lcom/sonyericsson/music/http/HttpServer$1$1;

    invoke-direct {p1, p0}, Lcom/sonyericsson/music/http/HttpServer$1$1;-><init>(Lcom/sonyericsson/music/http/HttpServer$1;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.class Lcom/sonyericsson/music/http/HttpServer$AcceptThread;
.super Ljava/lang/Thread;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/http/HttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcceptThread"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

.field private final mHttpService:Lorg/apache/http/protocol/HttpService;

.field private final mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Ljava/net/ServerSocket;Ljava/util/concurrent/ExecutorService;Lorg/apache/http/protocol/BasicHttpContext;Lorg/apache/http/protocol/HttpService;)V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mServerSocket:Ljava/net/ServerSocket;

    .line 239
    iput-object p2, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 240
    iput-object p3, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    .line 241
    iput-object p4, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/http/HttpServer$AcceptThread;)Lorg/apache/http/protocol/BasicHttpContext;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/http/HttpServer$AcceptThread;)Lorg/apache/http/protocol/HttpService;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mHttpService:Lorg/apache/http/protocol/HttpService;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;-><init>(Lcom/sonyericsson/music/http/HttpServer$AcceptThread;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
